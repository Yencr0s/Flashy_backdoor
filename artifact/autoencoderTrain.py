import torch
from torch.utils.data import DataLoader
from torch import nn
from spikingjelly.activation_based import functional, neuron
from models import Autoencoder, BigAutoencoder
from visuals import GradCAM


import torch
import argparse
import numpy as np
from models import get_model
from poisoned_dataset import create_backdoor_data_loader, create_defense_data_loader, PoisonedDataset
from utils import loss_picker, optimizer_picker, backdoor_model_trainer, save_experiments, prune_model, fine_tune,evaluate
from torch.cuda import amp
from spikingjelly.activation_based import functional, neuron
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

import matplotlib.pyplot as plt



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

parser.add_argument('--ms', type=str, default='model.pth')
parser.add_argument('--msf', type=str, default='modeltune.pth')
parser.add_argument('--msp', type=str, default='modelprune.pth')
parser.add_argument('--msfp', type=str, default='modelprunetune.pth')

args = parser.parse_args()


def plot_loss(loss_list):
    plt.plot(loss_list)
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.title('Autoencoder Loss')
    #save the plot as png
    plt.savefig('autoencoder_loss.png')


def initialize_weights(model):
    for m in model.modules():
        if isinstance(m, nn.Conv2d) or isinstance(m, nn.ConvTranspose2d):
            nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
        elif isinstance(m, nn.BatchNorm2d):
            nn.init.constant_(m.weight, 1)
            nn.init.constant_(m.bias, 0)

# Set random seed
np.random.seed(args.seed)
torch.manual_seed(args.seed)
random.seed(args.seed)

# Load the dataset
poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(
            args)


# Define the device
device = 'cuda' if torch.cuda.is_available() else 'cpu'
if not torch.cuda.is_available():
    print('CUDA is not available. Running on CPU...')
# device = 'cpu'

# Initialize the autoencoder
autoencoder = BigAutoencoder(channels=128, spiking_neuron=neuron.LIFNode).to(device)
initialize_weights(autoencoder)
autoencoder.train()

gradcam_model = get_model(args.dataset, args.T)

if args.model_path is not None:
    gradcam_model = torch.load(args.model_path)

# Ensure all model parameters require gradients
for param in gradcam_model.parameters():
    param.requires_grad = True

# # Load the model used for GradCAM
# gradcam_model = torch.load('modelCAMbase.pth').to(device)

target_layer = None
for name, module in gradcam_model.named_modules():
    if isinstance(module, layer.Conv2d):
        target_layer = module
grad_cam = GradCAM(gradcam_model, target_layer)




accumulation_steps = 16

loss_list = []
# Define the loss function and optimizer
criterion = nn.MSELoss()
#the mse does not work well with the spiking neural network
# criterion = nn.L1Loss()
#l1 does not work well with the spiking neural networks try ssim
# criterion = nn.
optimizer = torch.optim.Adam(autoencoder.parameters(), lr=0.002*accumulation_steps, weight_decay=1e-5)
# scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=10, gamma=0.5)
scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=100)


# Train the autoencoder
num_epochs = 500
for epoch in range(num_epochs):
    epoch_loss = 0

    print(f"Epoch [{epoch+1}/{num_epochs}]")
    
    # Generate CAMs and apply masking
    masked_inputs = []
    lowest_loss = 1000000
    for step, (input_image, y) in enumerate(poison_trainloader):
        y = torch.argmax(y)
        input_image = input_image.transpose(0, 1).to(device)  # [N, T, C, H, W] -> [T, N, C, H, W]
        # gradcam_model = gradcam_model.to(device)
        # cam = grad_cam.generate_cam(input_image, class_idx=7,layer=4,maxed=True)
        # gradcam_model = gradcam_model.to('cpu')

        threshold = 0.5

        # masked_image = apply_mask(input_image, cam, threshold).to(device)
        # print('masked_image',masked_image.shape)
        # masked_inputs.append(masked_image)
        
        # Apply masking to simulate missing regions
        # masked_inputs = torch.stack(masked_inputs).squeeze(0).to(device)
        # print('masked_inputs',masked_inputs.shape)
        # Forward pass
        # autoencoder=autoencoder.to(device)
        
        #remove random square patches from the image to simulate missing regions
        mask = torch.zeros(input_image[:,0,:,:,:].shape[1:], dtype=torch.bool)
        #randomize the size of the square patch
        patch_size = 16
        for i in range(5):
            #randomize the position of the square patch
            patch_position = np.random.randint(0, 128 - patch_size, 2)
            # mask[:,0:0 + patch_size, 0:0 + patch_size] = True
            mask[:,patch_position[0]:patch_position[0] + patch_size, patch_position[1]:patch_position[1] + patch_size] = True

        masked_image = input_image.clone()
        # print('image shape:', masked_image.shape)
        masked_image[:, :, mask] = 0  # Apply mask to all channels
        # play_frame(masked_image[:,0,:,:,:],'a_masked.gif')
        # print('Mask shape:', mask.shape)

        reconstructed = autoencoder(masked_image[:,0,:,:,:])
        # print('reconstructed shape:', reconstructed[:, ~mask].shape)
        # print('input_image shape:', input_image[:, 0, ~mask].shape)
        # Recover the rest of the original image maintaining the masked regions
        
        

        
        # masked_image = masked_image.to('cpu')
        # play_frame(reconstructed,'a_reconstructed.gif')
        # play_frame(masked_image[:,0,:,:,:],'a_masked.gif')
        # play_frame(input_image[:,0,:,:,:],'a_input.gif')
        loss = criterion(reconstructed[:, mask], input_image[:, 0, mask])  # Compare reconstruction to original
        # resconstructed = reconstructed.to('cpu')
        # input_image = input_image.to('cpu')
        loss = loss / accumulation_steps
        # Backward pass and optimization
        loss.backward()
        if (step + 1) % accumulation_steps == 0 or (step + 1) == len(poison_trainloader):
            optimizer.step()
            optimizer.zero_grad()  # Reset gradients after each update


        reconstructed[:, ~mask] = input_image[:, 0, ~mask]
        # play_frame(reconstructed[:,:,:,:],'a_reconstructed.gif')

        # autoencoder = autoencoder.to('cpu')
        # Reset the network for the next batch
        functional.reset_net(autoencoder)
        # functional.reset_net(gradcam_model)
        
        input_image=input_image.to('cpu')
        reconstructed=reconstructed.to('cpu')
        # masked_image=masked_image.to('cpu')
        torch.cuda.empty_cache()
        epoch_loss += loss.item()
        #del
        #clean the gpu memory
        # del input_image
        # del reconstructed
        # del masked_image
        
        # del cam
        
        torch.cuda.empty_cache()
    loss_list.append(epoch_loss / len(poison_trainloader))
    if epoch_loss/len(poison_trainloader) < lowest_loss:
            lowest_loss = loss
            torch.save(autoencoder, 'autoencoderPatchBigL1.pth')
    print(f"Epoch [{epoch+1}/{num_epochs}], Loss: {epoch_loss / len(poison_trainloader):.4f}")
    play_frame(reconstructed,'a_reconstructed.gif')
    play_frame(input_image[:,0,:,:,:],'a_input.gif')
    scheduler.step()
    plot_loss(loss_list)

# Save the autoencoder
torch.save(autoencoder, 'autoencoderPatch3.pth')

