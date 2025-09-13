import torch
from torch.utils.data import DataLoader
from torch import nn
from models import SuperBigAutoencoder
from visuals import GradCAM

import gc
import torch
import argparse
import numpy as np
from models import get_model
# from poisoned_dataset_februus import create_backdoor_data_loader, create_defense_data_loader, PoisonedDataset
from poisoned_dataset import create_backdoor_data_loader, create_defense_data_loader, PoisonedDataset

from utils import loss_picker, optimizer_picker, backdoor_model_trainer, save_experiments, prune_model, fine_tune,evaluate
from torch.cuda import amp
import random
import cupy
from spikingjelly.activation_based import monitor, neuron, functional, layer, tensor_cache
from visuals import *

import sys
import torch.nn.functional as F
import os
from spikingjelly.datasets import play_frame
from datasets import get_dataset, get_dataset2
from torch.utils.data import Dataset, DataLoader
import torch

from torchvision import transforms

import torch, gc
gc.collect()
torch.cuda.empty_cache()

from matplotlib.cm import get_cmap
import imageio
from gradCamPatch import apply_mask


import pandas as pd



# def check_leaked_tensors():
#     # for obj in gc.get_objects():
#     #     if torch.is_tensor(obj) and obj.is_cuda:
#     #         # # print(f"Leaked tensor: {type(obj)}, size: {obj.size()}, requires_grad: {obj.requires_grad}")
#     #         obj.cpu()
#     for obj in gc.get_objects():
#         if torch.is_tensor(obj) and obj.is_cuda:
#             # print(f"Leaked tensor: {type(obj)}, size: {obj.size()}, requires_grad: {obj.requires_grad}")
#             # obj.cpu()

# def print_memory_status(message=""):
    # print(f"{message}")
    # print(f"Allocated: {torch.cuda.memory_allocated() / 1024 ** 2:.2f} MB")
    # print(f"Cached: {torch.cuda.memory_reserved() / 1024 ** 2:.2f} MB")



def save_experiments(results, save_name):
    #if the file does not exist, create it
    if not os.path.isfile(save_name):
        header = results.keys()
        results = [results]
        results = pd.DataFrame(results, columns=header)
        results.to_csv(save_name, index=False)
        return
    #if the file exists, append to it
    results = pd.DataFrame(results, index=[0])
    results.to_csv(save_name, mode='a', header=False, index=False)
    return


parser = argparse.ArgumentParser()
parser.add_argument('--dataset', type=str,
                    default='gesture', help='Dataset to use')
parser.add_argument('--lr', type=float, default=0.001, help='Learning rate')
parser.add_argument('--batch_size', type=int, default=1, help='Batch size')
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

parser.add_argument('--ms', type=str, default='model.pth')
parser.add_argument('--msf', type=str, default='modeltune.pth')
parser.add_argument('--msp', type=str, default='modelprune.pth')
parser.add_argument('--msfp', type=str, default='modelprunetune.pth')
parser.add_argument('--threshold', type=float, default=0.5, help='Threshold for gradcam masking')
parser.add_argument('--physical', action = 'store_true', default=False, help='Use physical attack')
args = parser.parse_args()

# Set random seed
np.random.seed(args.seed)
torch.manual_seed(args.seed)
random.seed(args.seed)

# Load the dataset
poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(
            args)

# Define the device
device = 'cuda' if torch.cuda.is_available() else 'cpu'
# device = 'cpu'

# Initialize the autoencoder
autoencoder = SuperBigAutoencoder(channels=128, spiking_neuron=neuron.LIFNode)

#load the saved autoencoder
autoencoder = torch.load('newFinalAutoencoderPatchSuperBig2L1.pth',weights_only=False)

# do not train the autoencoder
autoencoder.eval()

gradcam_model = get_model(args.dataset, args.T)
# print(args.dataset, args.T)

gradcam_model2 = get_model(args.dataset, args.T)

if args.model_path is not None:
    gradcam_model = torch.load(args.model_path,weights_only=False)
    gradcam_model2 = torch.load(args.model_path,weights_only=False)

gradcam_model2.eval()
#save the model parameters on a variable
# model_parameters = gradcam_model.state_dict()

# Ensure all model parameters require gradients
for param in gradcam_model.parameters():
    param.requires_grad = True

for param in gradcam_model2.parameters():
    param.requires_grad = False

# # Load the model used for GradCAM
# gradcam_model = torch.load('modelCAMbase.pth').to(device)

target_layer = None
for name, module in gradcam_model.named_modules():
    if isinstance(module, layer.Conv2d):
        target_layer = module
grad_cam = GradCAM(gradcam_model, target_layer)

# Define the loss function and optimizer
criterion = nn.MSELoss()
optimizer = torch.optim.Adam(autoencoder.parameters(), lr=0.001)
scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=10, gamma=0.5)

accumulation_steps = 16





# epoch_loss = 0

# # print(f"Epoch [{epoch+1}/{num_epochs}]")

# Generate CAMs and apply masking
masked_inputs = []

poisoned_correct = 0
poisoned_consistent = 0
poisoned_rounded_correct = 0
poisoned_rounded_consistent = 0
# skips = 0
poisoned_ASR = 0
poisoned_CleanedACC = 0
poisoned_rounded_ASR = 0
poisoned_rounded_CleanedACC = 0

total = 0
poisoned_saved = 0
poisoned_rounded_saved = 0
poisoned_previous_ASR = 0
poisoned_previous_CleanACC = 0


# copy_clean_testloader = copy.deepcopy(clean_testloader)
# copy_poison_testloader = copy.deepcopy(poison_testloader)
#evaluate first the previous ASR and CleanACC
# _, test_acc_clean = evaluate(
#         gradcam_model, copy_clean_testloader, criterion, device)

# _, test_acc_backdoor = evaluate(
#     gradcam_model, copy_poison_testloader, criterion, device)

# # print('Previous ASR:',test_acc_backdoor)
# # print('Previous CleanACC:',test_acc_clean)


# for step, (input_image, y) in enumerate(poison_testloader):
#     y = torch.argmax(y)
#     total += 1
#     input_image = input_image.to(device).transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]
#     with torch.no_grad():
#         functional.reset_net(gradcam_model)
#         pred = gradcam_model(input_image).mean(0).argmax(1).item()
#         functional.reset_net(gradcam_model)
#     torch.cuda.empty_cache()
#     # print('pred:',pred, 'y:',y.item(), 'trigger:',args.trigger_label)
#     # # print('trigger:',args.trigger_label)
#     if pred == args.trigger_label:
#         poisoned_previous_ASR += 1
#         # print('poisoned_previous_ASR:',poisoned_previous_ASR)
#     del input_image
#     del y
#     torch.cuda.empty_cache()

## print the models parameters
# # print('model_parameters:',model_parameters['conv_fc.5.weight'])
counter = 0
counter2 = 0
print('Starting Februus Defense')
print('Threshold:',args.threshold)
print('Trigger size:',args.trigger_size)
print('Trigger length:',args.trigger_length)
print('______________________________________________')
print('Evaluating on poisoned test set')
for step, (input_image, y) in enumerate(poison_testloader):
    y = torch.argmax(y)
    # if y == args.trigger_label:
    #     continue
    total += 1
    # model_parameters2 = gradcam_model.state_dict()
    # # print('model_parameters:',model_parameters2['conv_fc.5.weight'])
    
    # input_image2 = copy.deepcopy(input_image).to(device).transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]
    input_image = input_image.to(device).transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]



    # gradcam_model.load_state_dict(model_parameters)
    # with torch.no_grad():
    #         functional.reset_net(gradcam_model)
    #         pred = gradcam_model2(input_image).mean(0).argmax(1).item()
    #         functional.reset_net(gradcam_model)

    

    cam = grad_cam.generate_cam(input_image, class_idx=args.trigger_label,layer=4,maxed=True)
    threshold = args.threshold

    
    

    masked_image, mask = apply_mask(input_image, cam, threshold)
    masked_image = masked_image
    grad_cam.grad_input_monitor.records.clear()
    grad_cam.spike_seq_monitor.records.clear()
    grad_cam.model.zero_grad()
    torch.cuda.empty_cache()
    
    # gradcam_model.load_state_dict(model_parameters)

    # with torch.no_grad():
    #     functional.reset_net(gradcam_model)
    #     pred2 = gradcam_model2(input_image).mean(0).argmax(1).item()
    #     functional.reset_net(gradcam_model)




    with torch.no_grad():
        reconstructed = autoencoder(masked_image[:,0,:,:,:])
    functional.reset_net(autoencoder)
    gc.collect()
    torch.cuda.empty_cache()

    # gradcam_model.load_state_dict(model_parameters)

    # with torch.no_grad():
    #     functional.reset_net(gradcam_model)
    #     pred3 = gradcam_model2(input_image).mean(0).argmax(1).item()
    #     functional.reset_net(gradcam_model)



    mask2 = mask[:,0,:,:,:]

    reconstructed[mask2] = input_image[mask]

    # expand the reconstructed image to 5D tensor adding the batch dimension
    reconstructed = reconstructed.unsqueeze(1)



    #load the saved model parameters from a variable of state dict
    # gradcam_model.load_state_dict(model_parameters)

    with torch.no_grad():
        # for param in gradcam_model2.parameters():
        #     param.grad = None
        # gc.collect()

        # torch.cuda.empty_cache()
        # # # print_memory_status("Before resetting gradcam_model2")

        # #check all the models things that could be in pgu
        # gradcam_model2.zero_grad()

        # gradcam_model2.to('cpu')

        # for param in gradcam_model2.parameters():
            
        #     # print('param:',param)
        #     break
        functional.reset_net(gradcam_model2)
        # for param in gradcam_model2.parameters():
        #     # print('param2:',param)
        #     break
        # gradcam_model2.to(device)
        pred = gradcam_model2(input_image).mean(0).argmax(1).item()

        
        torch.cuda.empty_cache()
        functional.reset_net(gradcam_model2)
        out_fr = gradcam_model2(reconstructed).mean(0).argmax(1)
        torch.cuda.empty_cache()
        functional.reset_net(gradcam_model2)
        rounded = gradcam_model2(torch.round(reconstructed)).mean(0).argmax(1)

    functional.reset_net(gradcam_model)

    torch.cuda.empty_cache()


    # # print('pred:',pred, 'pred2:',pred2, 'pred3:',pred3, 'pred4:',pred4)
    if out_fr == args.trigger_label:
        poisoned_ASR += 1
    if out_fr == y:
        poisoned_CleanedACC += 1
    
    if rounded == args.trigger_label:
        poisoned_rounded_ASR += 1
    if rounded == y:
        poisoned_rounded_CleanedACC += 1

    if out_fr == y and pred == args.trigger_label:
        poisoned_saved += 1
    if rounded == y and pred == args.trigger_label:
        poisoned_rounded_saved += 1
    # # print('pred:',pred, 'y:',y.item(), 'trigger:',args.trigger_label)
    # # print('trigger:',args.trigger_label)
    if pred == args.trigger_label:
        poisoned_previous_ASR += 1
        # # print('poisoned_previous_ASR:',poisoned_previous_ASR)
    # else:
        # # print('pred:',pred)
        # # print('trigger:',args.trigger_label)
    if pred == y:
        poisoned_previous_CleanACC += 1
    if pred != 0:
    # if pred != 0 or pred2 != 0 or pred3 != 0 or pred4 != 0:
        # # print('pred:',pred, 'pred2:',pred2, 'pred3:',pred3, 'pred4:',pred4)
        # print('pred:',pred)
        counter += 1
        # print(counter)


    

    # if args.type == 'flash':
        # play_frame(reconstructed[:,0,:,:,:],'februus_flash_reconstructer.gif')
        # play_frame(torch.round(reconstructed)[:,0,:,:,:],'februus_flash_rounded.gif')
        # play_frame(masked_image[:,0,:,:,:],'februus_flash_masked.gif')
        # play_frame(input_image[:,0,:,:,:],'februus_flash_input.gif')

    del reconstructed
    del masked_image
    del out_fr
    del pred
    del rounded
    del cam
    del mask
    del mask2
    del input_image
    del y
    torch.cuda.empty_cache()

    # Check for memory leaks
    # check_leaked_tensors()

# print('total:',total, 'poisoned_previous_ASR:',poisoned_previous_ASR)
poisoned_saved/=poisoned_previous_ASR
poisoned_rounded_saved/=poisoned_previous_ASR

poisoned_ASR/=total
poisoned_CleanedACC/=total
poisoned_rounded_ASR/=total
poisoned_rounded_CleanedACC/=total

poisoned_previous_ASR/=total
poisoned_previous_CleanACC/=total

print('Total samples evaluated:',total)
print('Evaluation on poisoned test set completed')
print('Mantained_ASR:',poisoned_ASR)
print('CleanedACC:',poisoned_CleanedACC)
print('Mantainted_rounded_ASR:',poisoned_rounded_ASR)
print('rounded_CleanACC:',poisoned_rounded_CleanedACC)
print('saved percentage:',poisoned_saved)
print('rounded saved percentage:',poisoned_rounded_saved)
print('__________________________________________________________________________')
print('Evaluation on clean test set started')
# # print('Mantained_ASR:',poisoned_ASR)
# # print('CleanedACC:',poisoned_CleanedACC)
# # print('Mantainted_rounded_ASR:',poisoned_rounded_ASR)
# # print('rounded_CleanACC:',poisoned_rounded_CleanedACC)
# # print('saved percentage:',poisoned_saved)
# # print('rounded saved percentage:',poisoned_rounded_saved)
# print('previous_ASR:',poisoned_previous_ASR)
# # print('previous_CleanACC:',poisoned_previous_CleanACC)

masked_inputs = []

correct_clean = 0
consistent_clean = 0
rounded_correct_clean = 0
rounded_consistent_clean = 0
skips = 0
cleanACC = 0
rounded_CleanACC = 0
previous_CleanACC = 0
lost = 0
rounded_lost = 0
total = 0



for step, (input_image, y) in enumerate(clean_testloader):
    
    y = torch.argmax(y)

    total += 1

    input_image = input_image.transpose(0, 1).to(device)  # [N, T, C, H, W] -> [T, N, C, H, W]
    #save the models parameters on a variable
    cam = grad_cam.generate_cam(input_image, class_idx=y,layer=4,maxed=True)
    threshold = args.threshold

    masked_image, mask = apply_mask(input_image, cam, threshold)
    masked_image = masked_image
    grad_cam.grad_input_monitor.records.clear()
    grad_cam.spike_seq_monitor.records.clear()
    grad_cam.model.zero_grad()
    torch.cuda.empty_cache()

    with torch.no_grad():
        reconstructed = autoencoder(masked_image[:,0,:,:,:])
    # Reset the network for the next batch
    functional.reset_net(autoencoder)
    torch.cuda.empty_cache()

    mask2 = mask[:,0,:,:,:]

    reconstructed[mask2] = input_image[mask]

    # expand the reconstructed image to 5D tensor adding the batch dimension
    reconstructed = reconstructed.unsqueeze(1)

    ## # print the device of reconstructed
    #load the saved model parameters
    # gradcam_model.load_state_dict(model_parameters)

    with torch.no_grad():
        pred = gradcam_model2(input_image).mean(0).argmax(1)
        functional.reset_net(gradcam_model)
        out_fr = gradcam_model2(reconstructed).mean(0).argmax(1)
        functional.reset_net(gradcam_model)
        rounded = gradcam_model2(torch.round(reconstructed)).mean(0).argmax(1)
        functional.reset_net(gradcam_model)

    torch.cuda.empty_cache()

    if out_fr == y:
        cleanACC += 1
    if out_fr == pred:
        consistent_clean += 1

    if rounded == y:
        rounded_CleanACC += 1
    if rounded == pred:
        rounded_consistent_clean += 1

    if pred == y:
        previous_CleanACC += 1

    if pred==y and out_fr != y:
        lost += 1

    if pred==y and rounded != y:
        rounded_lost += 1
    
    del reconstructed
    del masked_image
    del out_fr
    del cam
    del mask
    del mask2
    del input_image
    del y
    torch.cuda.empty_cache()

cleanACC/=total
rounded_CleanACC/=total
lost/=previous_CleanACC
rounded_lost/=previous_CleanACC
previous_CleanACC/=total
consistent_clean/=total
rounded_consistent_clean/=total

print('Evaluation on clean test set completed')
print('previous_CleanACC:',previous_CleanACC)
print('cleanACC:',cleanACC)
print('consistent_clean:',consistent_clean)
print('rounded_CleanACC:',rounded_CleanACC)
print('rounded_consistent_clean:',rounded_consistent_clean)
print('lost percentage:',lost)
print('rounded_lost percentage:',rounded_lost)


# print('previous_CleanACC:',previous_CleanACC)
# print('cleanACC:',cleanACC)
# # print('consistent_clean:',consistent_clean)
# # print('rounded_correct_clean:',rounded_CleanACC)
# # print('rounded_consistent_clean:',rounded_consistent_clean)
# # print('lost percentage:',lost)
# # print('rounded_lost percentage:',rounded_lost)

#only get the first 2 decimal points
results_small = { 'Seed':args.seed, 'Threshold': args.threshold,'Patch_size': args.trigger_size, 'Trigger_length': args.trigger_length,
            'Previous_ASR': round(poisoned_previous_ASR, 2), 'Previous_CleanACC': round(previous_CleanACC, 2),
            'Februus_ASR': round(poisoned_ASR, 2), 'Februus_CleanedACC': round(cleanACC, 2),
            'Februus_Rounded_ASR': round(poisoned_rounded_ASR, 2), 'Februus_Rounded_CleanedACC': round(rounded_CleanACC, 2)}

results_small2 = { 'Seed':args.seed, 'Threshold': args.threshold,'Patch_size': args.trigger_size, 'Trigger_length': args.trigger_length,'Trigger_gap':args.strobe_gap,
            'Previous_ASR': round(poisoned_previous_ASR, 2), 'Previous_CleanACC': round(previous_CleanACC, 2),
            'Februus_ASR': round(poisoned_ASR, 2), 'Februus_CleanedACC': round(cleanACC, 2),
            'Februus_Rounded_ASR': round(poisoned_rounded_ASR, 2), 'Februus_Rounded_CleanedACC': round(rounded_CleanACC, 2)}

results_small3 = { 'Seed':args.seed, 'Threshold': args.threshold,'Patch_size': args.trigger_size, 'Trigger_length': args.trigger_length,'Trigger_gap':args.strobe_gap,
            'Previous_ASR': round(poisoned_previous_ASR, 4), 'Previous_CleanACC': round(previous_CleanACC, 4),
            'Februus_ASR': round(poisoned_ASR, 4), 'Februus_CleanedACC': round(cleanACC, 4),
            'Februus_Rounded_ASR': round(poisoned_rounded_ASR, 4), 'Februus_Rounded_CleanedACC': round(rounded_CleanACC, 4)}

results = { 'Seed':args.seed,'Patch_size': args.trigger_size, 'Trigger_length': args.trigger_length, 
            'Previous_ASR':poisoned_previous_ASR, 'Februus_ASR':poisoned_ASR, 
            'Previous_CleanACC':poisoned_previous_CleanACC, 'Februus_CleanedACC':poisoned_CleanedACC,
            'Februus_Rounded_ASR':poisoned_rounded_ASR, 'Februus_Rounded_CleanedACC':poisoned_rounded_CleanedACC,
            'Februus_saved': poisoned_saved, 'Februus_rounded_saved': poisoned_rounded_saved,
            'previous_CleanACC':previous_CleanACC, 'Februus_cleanACC':cleanACC, 'Februus_consistent_clean':consistent_clean, 
            'Februus_rounded_CleanACC':rounded_CleanACC, 'Februus_rounded_consistent_clean':rounded_consistent_clean,
            'Februus_clean_Lost':lost, 'Februus_clean_Rounded_Lost':rounded_lost}


# save_experiments(results, args.save_name)
save_experiments(results_small3, os.path.join(args.save_path, 'februus_result.csv'))

