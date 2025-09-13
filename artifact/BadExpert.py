import torch
import argparse
import numpy as np
from models import get_model
from poisoned_dataset import create_backdoor_data_loader, create_defense_data_loader, create_expert_data_loader
from utils import loss_picker, optimizer_picker, backdoor_model_trainer, save_experiments, prune_model, fine_tune, test_same_neurons, evaluate, evaluate_strip, freedman_diaconis_bins, expert_model_trainer, evaluate_expert
from torch.cuda import amp
from spikingjelly.activation_based import functional, neuron
import random
import cupy
import copy
import matplotlib.pyplot as plt

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

parser.add_argument('--fine_tune_epochs', type=int, default=3, help='Number of fine tuning epochs')

# parser.add_argument('--fine_prune', type=bool, default=False, help='Fine tune the model after pruning')
parser.add_argument('--fine_prune', action = 'store_true', default=False)

parser.add_argument('--ms', type=str, default='model.pth')
parser.add_argument('--msf', type=str, default='modeltune.pth')
parser.add_argument('--msp', type=str, default='modelprune.pth')
parser.add_argument('--msfp', type=str, default='modelprunetune.pth')
parser.add_argument('--acceptable_fpr', type=float, default=0.01, help='Acceptable false positive rate')
parser.add_argument('--physical', action='store_true', default=False, help='Use physical attack settings')

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
        model = torch.load(args.model_path)

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

    # if args.model_path is None:
    #     model = model.to(device)
    #     poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(
    #         args)

    #     list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model = backdoor_model_trainer(
    #         model, criterion, optimizer, args.epochs, poison_trainloader, clean_testloader,
    #         poison_testloader, device, scaler, scheduler)
    #     torch.save(model,args.ms)
        
    # else:
    model = torch.load(args.save_path+"/model_flashy_length3base.pth", weights_only=False)
    model = model.to(device)
    
    #evaluate the base model
    poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(
            args)
    criterion = loss_picker(args.loss)
    _, previousASR = evaluate(model, poison_testloader, criterion, device)
    _, previousCleanACC = evaluate(model, clean_testloader, criterion, device)
    
    
    print('Base Model Clean ACC:', previousCleanACC)
    print('Base Model ASR:', previousASR)
    
    expert_trainloader, clean_testloader2, poison_testloader2 = create_expert_data_loader(args)      


    criterion = loss_picker(args.loss)
    optimizer, scheduler = optimizer_picker(
    args.optim, model.parameters(), args.lr, args.momentum, args.epochs)
    trained = False
    if not trained:
        tune_list_train_loss, tune_list_train_acc, tune_list_test_loss, tune_list_test_acc, tune_list_test_loss_backdoor, tune_list_test_acc_backdoor, expert_model = expert_model_trainer(
            model, criterion, optimizer, args.fine_tune_epochs, expert_trainloader, clean_testloader2,
            poison_testloader2, device, scaler, scheduler)
        
        model_path = args.save_path+'/BadExpert_model.pth'
        torch.save(expert_model, model_path)

        model = torch.load(model_path, weights_only=False)
        criterion = loss_picker(args.loss)
        optimizer, scheduler = optimizer_picker(
        args.optim, model.parameters(), args.lr, args.momentum, args.epochs)
        tune_list_train_loss, tune_list_train_acc, tune_list_test_loss, tune_list_test_acc, tune_list_test_loss_backdoor, tune_list_test_acc_backdoor, tuned_model = backdoor_model_trainer(
            model, criterion, optimizer, args.fine_tune_epochs, expert_trainloader, clean_testloader2,
            poison_testloader2, device, scaler, scheduler)
        torch.save(tuned_model,args.save_path+'/BadTuned_model.pth')
    else:
        expert_model = torch.load(args.save_path+'/BadExpert_model.pth', weights_only=False)
        tuned_model = torch.load(args.save_path+'/BadTuned_model.pth', weights_only=False)

    # model = torch.load(args.model_path)
    
    tpr,fpr,tnr,fnr, tpr2,fpr2,tnr2,fnr2  = evaluate_expert(tuned_model, expert_model, clean_testloader2, poison_testloader2, device, args.acceptable_fpr)
    results_path = os.path.join(args.save_path, args.save_name+'.csv')
    if os.path.exists(results_path):
        df2 = pd.read_csv(results_path)
        new_row = pd.DataFrame([{
            'trigger_size': args.trigger_size,
            'trigger_length': args.trigger_length,
            'strobe': args.strobe_gap,
            'acceptable_fpr': args.acceptable_fpr,
            'tpr_adapt': tpr,
            'fpr_adapt': fpr,
            'tnr_adapt': tnr,
            'fnr_adapt': fnr,
            'tpr_abs': tpr2,
            'fpr_abs': fpr2,
            'tnr_abs': tnr2,
            'fnr_abs': fnr2
        }])

        # Concatenate instead of using .append()
        df2 = pd.concat([df2, new_row], ignore_index=True)
        # df2 = df2.append({'trigger_size':args.trigger_size,'trigger_length':args.trigger_length,'strobe':args.strobe_gap,'entropy_clean': clean_entropy_mean,'entropy_clean_std': clean_entropy_std ,'entropy_backdoor': backdoor_entropy_mean, 'entropy_backdoor_std': backdoor_entropy_std, 'previousCleanACC': previousCleanACC, 'cleanACC': celanACC,'previousASR': previousASR, 'asr': asr}, ignore_index=True)
        df2.to_csv('resultsBadExpert.csv', index=False)
    else:
        df2 = pd.DataFrame([{  # Wrap everything in a single-element list to create one-row DataFrame
            'trigger_size': args.trigger_size,
            'trigger_length': args.trigger_length,
            'strobe': args.strobe_gap,
            'acceptable_fpr': args.acceptable_fpr,
            'tpr_adapt': tpr,
            'fpr_adapt': fpr,
            'tnr_adapt(CAcc)': tnr,
            'fnr_adapt(ASR)': fnr,
            'tpr_abs': tpr2,
            'fpr_abs': fpr2,
            'tnr_abs(CAcc)': tnr2,
            'fnr_abs(ASR)': fnr2
        }])
        df2.to_csv(results_path, index=False)
if __name__ == '__main__':
    main()
