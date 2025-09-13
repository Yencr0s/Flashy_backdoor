import torch
import argparse
import numpy as np
from models import get_model
from poisoned_dataset import create_backdoor_data_loader, create_defense_data_loader, create_backdoor_data_loader_physical
from utils import loss_picker, optimizer_picker, backdoor_model_trainer, save_experiments, prune_model, fine_tune, test_same_neurons, evaluate, prune_model_adapt_random_flash, prune_model_adapt_poison
from torch.cuda import amp
from spikingjelly.activation_based import functional, neuron
import random
import cupy
import copy

import pandas as pd
import os

import torch, gc
gc.collect()
torch.cuda.empty_cache()

parser = argparse.ArgumentParser()
parser.add_argument('--dataset', type=str,
                    default='gesture', help='Dataset to use')
parser.add_argument('--lr', type=float, default=0.001, help='Learning rate')
parser.add_argument('--batch_size', type=int, default=16, help='Batch size')
parser.add_argument('--epochs', type=int, default=10, help='Number of epochs')
parser.add_argument('--T', default=16, type=int,
                    help='simulating time-steps')
parser.add_argument('--amp', action='store_true',
                    help='Use automatic mixed precision training')
parser.add_argument('--cupy', action='store_true', help='Use cupy')
parser.add_argument('--loss', type=str, default='mse',
                    help='Loss function', choices=['mse', 'cross'])
parser.add_argument('--optim', type=str, default='adam',
                    help='Optimizer', choices=['adam', 'sgd'])
# Trigger related parameters
parser.add_argument('--trigger_label', default=7, type=int,
                    help='The index of the trigger label')
parser.add_argument('--polarity', default=0, type=int,
                    help='The polarity of the trigger', choices=[0, 1, 2, 3])
parser.add_argument('--trigger_size', default=0.1,
                    type=float, help='The size of the trigger as the percentage of the image size')
parser.add_argument('--epsilon', default=0.1, type=float,
                    help='The percentage of poisoned data')
parser.add_argument('--pos', default='top-left', type=str,
                    help='The position of the trigger', choices=['top-left', 'top-right', 'bottom-left', 'bottom-right', 'middle', 'random'])
parser.add_argument('--type', default='static', type=str,
                    help='The type of the trigger', choices=['static', 'moving', 'smart', 'flash'])
parser.add_argument('--n_masks', default=2, type=int,
                    help='The number of masks. Only if the trigger type is smart')
parser.add_argument('--least', action='store_true',
                    help='Use least active area for smart attack')
parser.add_argument('--most_polarity', action='store_true',
                    help='Use most active polarity in the area for smart attack')
parser.add_argument('--momentum', default=0.9, type=float, help='Momentum')
# Other
parser.add_argument('--data_dir', type=str,
                    default='data', help='Data directory')
parser.add_argument('--save_path', type=str,
                    default='experiments', help='Path to save the experiments')
parser.add_argument('--model_path', type=str, default=None,
                    help='Use a pretrained model')
parser.add_argument('--seed', type=int, default=42, help='Random seed')

#SECTION - Parse arguments
parser.add_argument('--start', type=int, default=0, 
                    help='Start frame index')
parser.add_argument('--end', type=int, default=0, 
                    help='End frame index, 0 for all')
parser.add_argument('--strobe_gap', type=int, default=0, 
                    help='Gap between the consecutive triggers')
parser.add_argument('--strobe_on_duration', type=int, 
                    default=0, help='Duration of the trigger before a gap')
parser.add_argument('--trigger_length', type=int, 
                    default=0, help='Duration of the trigger, if 0, then it applies to all the frames')
parser.add_argument('--random', type= bool, 
                    default = False, help = 'start from a random frame each time')
parser.add_argument('--save_name', type=str,
                    default='results', help='Name of the .csv to save the experiments')


# parser.add_argument('--defend', type=bool, default=False, help='Apply defenses')
parser.add_argument('--defend', action = 'store_true', default=False)


# parser.add_argument('--prune', type=bool, default=False, help='Prune the model')
parser.add_argument('--prune', action = 'store_true', default=False)


parser.add_argument('--acc_drop', type=str, default='0.04', help='Permited accuracy drop before stopping pruning')


# parser.add_argument('--fine_tune', type=bool, default=False, help='Fine tune the model after training')
parser.add_argument('--fine_tune', action = 'store_true', default=False)

parser.add_argument('--fine_tune_epochs', type=int, default=10, help='Number of fine tuning epochs')

# parser.add_argument('--fine_prune', type=bool, default=False, help='Fine tune the model after pruning')
parser.add_argument('--fine_prune', action = 'store_true', default=False)

parser.add_argument('--fine_prune_adapt', action = 'store_true', default=False, help='Use adaptative pruning method')

parser.add_argument('--ms', type=str, default='model.pth')
parser.add_argument('--msf', type=str, default='modeltune.pth')
parser.add_argument('--msp', type=str, default='modelprune.pth')
parser.add_argument('--msfp', type=str, default='modelprunetune.pth')
parser.add_argument('--physical', action = 'store_true', default=False, help='Use physical dataset for gesture')


args = parser.parse_args()



def main():


    list_train_acc, list_train_loss, list_test_acc, list_test_loss, list_test_acc_backdoor = [-1],[-1],[-1],[-1],[-1]
    list_test_loss_backdoor, prune_test_acc_clean, prune_test_acc_backdoor= [-1],0.0,0.0
    tune_list_test_acc, tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor = [-1],[-1],[-1],[-1]



    # Set random seed
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    random.seed(args.seed)
    
    torch.cuda.manual_seed(args.seed)
    torch.cuda.manual_seed_all(args.seed)
    torch.backends.cudnn.deterministic = True
    torch.backends.cudnn.benchmark = False

    # Set the device
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(device)
    # Load the model
    model = get_model(args.dataset, args.T)

    if args.model_path is not None:
        model = torch.load(args.model_path, weights_only=False)

    functional.set_step_mode(model, 'm')

    if args.cupy:
        functional.set_backend(model, 'cupy', instance=neuron.LIFNode)
        cupy.random.seed(args.seed)

    # model = model.to(device)

    criterion = loss_picker(args.loss)
    optimizer, scheduler = optimizer_picker(
        args.optim, model.parameters(), args.lr, args.momentum, args.epochs)

    scaler = None
    if args.amp:
        scaler = amp.GradScaler()
    if args.physical:
        poison_trainloader, clean_testloader, poison_testloader, clean_physical, poison_physical = create_backdoor_data_loader_physical(args)
    else:
        poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(args)

    if args.model_path is None:
        model = model.to(device)
        
        if args.physical:
            poison_trainloader, clean_testloader, poison_testloader, clean_physical, poison_physical = create_backdoor_data_loader_physical(args)
        else:
            poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(args)

        list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model = backdoor_model_trainer(
            model, criterion, optimizer, args.epochs, poison_trainloader, clean_testloader,
            poison_testloader, device, scaler, scheduler)
        torch.save(model,args.ms+'base.pth')
        
    else:
        model = model.to(device)
        
    if args.physical:
        #evaluate on the physical dataset
        _, clean_test_acc = evaluate(
            model, clean_physical, criterion, device)
        _, poison_test_acc = evaluate(
            model, poison_physical, criterion, device, physical_poison=True, trigger_label=args.trigger_label)
        
        print('Physical Clean Test Acc:', clean_test_acc)
        print('Physical Poison Test Acc:', poison_test_acc)
        #write to a csv file with the clean and poison test acc
        if not os.path.exists(args.save_path):
            os.makedirs(args.save_path)
        df = pd.DataFrame(columns=['Clean Test Acc', 'Poison Test Acc'])
        row = {'Clean Test Acc': clean_test_acc, 'Poison Test Acc': poison_test_acc}
        df = pd.concat([df, pd.DataFrame([row])], ignore_index=True)  
        df.to_csv(os.path.join(args.save_path, args.save_name + '_physical_results.csv'), index=False)
            
    

    

    if args.defend:
        poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(args)
        _, clean_test_acc = evaluate(
            model, clean_testloader, criterion, device)
        _, poison_test_acc = evaluate(
            model, poison_testloader, criterion, device)
        print('Initial Clean Test Acc:', clean_test_acc)
        print('Initial Poison Test Acc:', poison_test_acc)
        
        
        prune_test_acc_clean, prune_test_acc_backdoor, tune_list_test_acc, tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor = [],[],[],[],[],[]
        tune_list_test_acc, tune_list_test_acc_backdoor = [0],[0]
        # #apply pruning
        clean_trainloader, clean_testloader2, poison_testloader2 = create_defense_data_loader(
        args)
        _, test_acc_bd = evaluate(
            model, poison_testloader2, criterion, device)
        print('ASR',test_acc_bd)
        if args.prune:

                scaler1 = None
                prune_test_loss_clean, prune_test_acc_clean, prune_test_loss_backdoor, prune_test_acc_backdoor, pruned_model = prune_model(
                    model, criterion, clean_testloader2, poison_testloader2, device, args.acc_drop)
                torch.save(pruned_model,os.path.join(args.save_path, args.ms+'pruned.pth'))
                print('Pruning Done')

        if args.fine_tune:
            criterion = loss_picker(args.loss)
            optimizer, scheduler = optimizer_picker(
            args.optim, model.parameters(), args.lr, args.momentum, args.epochs)
            tune_list_train_loss, tune_list_train_acc, tune_list_test_loss, tune_list_test_acc, tune_list_test_loss_backdoor, tune_list_test_acc_backdoor, fine_model = backdoor_model_trainer(
                model, criterion, optimizer, args.fine_tune_epochs, clean_trainloader, clean_testloader2,
                poison_testloader2, device, scaler, scheduler)
            torch.save(fine_model,os.path.join(args.save_path, args.ms+'tuned.pth'))
            print('Fine Tuning Done')
            
            if not args.fine_prune:
                save_experiments(args, list_train_acc, list_train_loss, list_test_acc, list_test_loss, list_test_acc_backdoor,
                         list_test_loss_backdoor, model, prune_test_acc_clean, prune_test_acc_backdoor,
                         tune_list_test_acc, tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor)
                
        if args.fine_prune:
            prune_test_loss_clean, prune_test_acc_clean, prune_test_loss_backdoor, prune_test_acc_backdoor, model = prune_model(
                model, criterion, clean_testloader2, poison_testloader2, device, args.acc_drop)   
            torch.save(model,args.ms+'pruned.pth')
            criterion = loss_picker(args.loss)
            optimizer, scheduler = optimizer_picker(
            args.optim, model.parameters(), args.lr, args.momentum, args.epochs)
            fine_list_train_loss, fine_list_train_acc, fine_list_test_loss, fine_list_test_acc, fine_list_test_loss_backdoor, fine_list_test_acc_backdoor, fineprune_model  = backdoor_model_trainer(
                model, criterion, optimizer, args.fine_tune_epochs, clean_trainloader, clean_testloader2,
                poison_testloader2, device, scaler, scheduler)

            torch.save(fineprune_model,os.path.join(args.save_path, args.ms+'fpruned.pth'))
            print('Fine Pruning Done')

            if not os.path.exists(args.save_path):
                os.makedirs(args.save_path)
            #save the results to a csv file if it does not exist and append if it exists
            if os.path.exists(os.path.join(args.save_path, args.save_name + '_prune_ft_fp_results.csv')):
                df = pd.read_csv(os.path.join(args.save_path, args.save_name + '_prune_ft_fp_results.csv'))
            else:
                df = pd.DataFrame(columns=['Initial CA', 'Initial ASR', 'Pruned CA', 'Pruned ASR', 'Fine-tuned CA', 'Fine-tuned ASR', 'Fine-pruned CA', 'Fine-pruned ASR'])
            row = {'Initial CA': clean_test_acc, 'Initial ASR': poison_test_acc, 'Pruned CA': prune_test_acc_clean, 'Pruned ASR': prune_test_acc_backdoor,
                   'Fine-tuned CA': tune_list_test_acc[-1], 'Fine-tuned ASR': tune_list_test_acc_backdoor[-1],
                   'Fine-pruned CA': fine_list_test_acc[-1], 'Fine-pruned ASR': fine_list_test_acc_backdoor[-1]}
            df = pd.concat([df, pd.DataFrame([row])], ignore_index=True)
            df.to_csv(os.path.join(args.save_path, args.save_name + '_prune_ft_fp_results.csv'), index=False)
            
            # if not args.fine_tune:
            #     save_experiments(args, list_train_acc, list_train_loss, list_test_acc, list_test_loss, list_test_acc_backdoor,
            #          list_test_loss_backdoor, model, prune_test_acc_clean, prune_test_acc_backdoor,
            #          tune_list_test_acc, tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor)
            # else:
            #     save_experiments(args, list_train_acc, list_train_loss, list_test_acc, list_test_loss, list_test_acc_backdoor,
            #          list_test_loss_backdoor, model, prune_test_acc_clean, prune_test_acc_backdoor, tune_list_test_acc,
            #          tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor)
    else:
        save_experiments(args, list_train_acc, list_train_loss, list_test_acc, list_test_loss, list_test_acc_backdoor,
                     list_test_loss_backdoor, model, prune_test_acc_clean, prune_test_acc_backdoor, tune_list_test_acc,
                     tune_list_test_acc_backdoor, fine_list_test_acc, fine_list_test_acc_backdoor)
if __name__ == '__main__':
    main()
