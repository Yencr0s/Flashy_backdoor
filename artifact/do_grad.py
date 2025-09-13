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
import copy
from spikingjelly.activation_based import monitor, neuron, functional, layer, tensor_cache
from visualspre import *

import sys
import torch.nn.functional as F
import os
from spikingjelly.datasets import play_frame
from datasets import get_dataset, get_dataset2
from torch.utils.data import Dataset, DataLoader
import torch

import copy
from torchvision import transforms

import torch, gc
gc.collect()
torch.cuda.empty_cache()

from matplotlib.cm import get_cmap
import imageio

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
parser.add_argument('--trigger_label', default=0, type=int,
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
parser.add_argument('--ms',type=str ,default=None)
args = parser.parse_args()


def main():
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    random.seed(args.seed)

    # Set the device
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    #print(device)

    # Load the model
    model = get_model(args.dataset, args.T)

    if args.model_path is not None:
        model = torch.load(args.model_path)

    # Ensure all model parameters require gradients
    for param in model.parameters():
        param.requires_grad = True

    model = model.to(device)

    # Adjust model's input and output layers if needed
    functional.set_step_mode(model, 'm')
    if args.cupy:
        functional.set_backend(model, 'cupy', instance=neuron.LIFNode)

    criterion = loss_picker(args.loss)
    optimizer, scheduler = optimizer_picker(args.optim, model.parameters(), args.lr, args.momentum, args.epochs)

    scaler = None
    if args.amp:
        scaler = amp.GradScaler()

    if args.ms is not None:
        poison_trainloader, clean_testloader, poison_testloader = create_backdoor_data_loader(
            args)

        list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model = backdoor_model_trainer(
            model, criterion, optimizer, args.epochs, poison_trainloader, clean_testloader,
            poison_testloader, device, scaler, scheduler)
            
        torch.save(model, args.ms)

    

    test_data = get_dataset2(args.dataset, args.T, args.data_dir)

    # test_data_tri = PoisonedDataset(test_data, 7, mode='test', epsilon=1.0,
    #                                 pos=args.pos, attack_type=args.type, time_step=args.T,
    #                                 trigger_size=1.0, dataname=args.dataset,
    #                                 polarity=3, n_masks=args.n_masks, least=args.least, most_polarity=args.most_polarity,
    #                                 start=0, end=args.end, strobe_gap=1, strobe_on_duration=args.strobe_on_duration, trigger_length=3)


    test_loader = DataLoader(dataset=test_data, batch_size=1, shuffle=False, num_workers=5)


    # _, clean_testloader, poison_testloader = create_backdoor_data_loader(
    #         args)


    # Define target layer (last convolutional layer in ResNet)
    target_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            target_layer = module

    output_dir = './gradcam_output'
    os.makedirs(output_dir, exist_ok=True)

    grad_cam = GradCAM(model, target_layer)
    # input_image = torch.randn(1, 16, 2, 128, 128, requires_grad=True).to(device)  # Example shape
    i=0
    for frame, label in tqdm(test_loader):
        if i ==3:
            frame = frame.to(device)
            print(label)
            # play_frame(frame[0], 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.gif')

            frame = frame.transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]

            break
        i+=1

    input_image=frame

    

   
    # for i in range(1,5):
    #     images = []
    #     cam = grad_cam.generate_cam(input_image, class_idx=0,layer=i)

    #     # Save the CAM image for a specific frame

    #     for frame_idx in range(16):
    #         combined_image = save_cam_image(cam, input_image.cpu().detach().numpy(), frame_idx, f'frame_{frame_idx}.png')
    #         images.append(combined_image)

    #     # Create GIF from saved frames
    #     create_gif(images, f'layer{i}.gif', duration=0.5)
    images = []
    cam = grad_cam.generate_cam(input_image, class_idx=0,layer=3,maxed=False)

    # Save the CAM image for a specific frame

    for frame_idx in range(16):
        combined_image = save_cam_image(cam, input_image.cpu().detach().numpy(), frame_idx, f'frame_{frame_idx}.png')
        images.append(combined_image)

    # Create GIF from saved frames
    create_gif(images, 'base_model_c0_l4.gif', duration=0.1)

    # create_gif(images, 'trigger_model_c0_l1.gif', duration=0.1)

# Function to create GIF from frames
def create_gif(images, file_name, duration=0.05):
    imageio.mimsave(file_name, images, fps=3, loop=0)

def save_cam_image(cam2, input_image, frame_idx, file_name):
    # Ensure the cam tensor is aligned with the input image dimensions
    cam = cam2[frame_idx]

    cam = np.expand_dims(cam, axis=0)  # Add channel dimension

    cam = np.repeat(cam, input_image.shape[2], axis=0)  # Repeat over the number of channels

    cam = np.expand_dims(cam, axis=(0, 1))  # Add batch and frame dimensions

    cam = np.repeat(cam, input_image.shape[3]/cam.shape[3], axis=3)  # Repeat over the height

    cam = np.repeat(cam, input_image.shape[4]/cam.shape[4], axis=4)  # Repeat over the width


    # Normalize cam to [0, 1]
    # cam = cam / np.max(cam)
    
    cam = (cam - np.min(cam)) / (np.max(cam) - np.min(cam))
    cam = (cam * 255).astype(np.uint8)  # Scale to [0, 255]

    # Normalize input_image to [0, 1] and scale to [0, 255]
    input_image = input_image[frame_idx, 0, :, :, :]
    # print('a',input_image.shape)
    input_image[0] += input_image[1]
    # input_image = (input_image - np.min(input_image)) / (np.max(input_image) - np.min(input_image))
    input_image = (input_image * 255).astype(np.uint8)  # Scale to [0, 255]

    # #print('inputimage',input_image.shape)
    # Apply colormaps
    cmap_cam = get_cmap('inferno')
    cmap_input = get_cmap('gray')
    # #print(cam.shape)
    #print(cam.shape)
    cam_colored = cmap_cam(cam[0, 0, 0, :, :])[:, :,:3]  # Apply colormap on cam
    # #print('asdf',cam_colored.shape)
    input_colored = cmap_input(input_image[0, :, :])[:, :, :3]  # Apply colormap on input image
    # #print('asdf2',input_colored.shape)
    # Combine the two images
    combined_image = 0.75 * cam_colored + 0.25 * input_colored
    combined_image = (combined_image * 255).astype(np.uint8)  # Convert to RGB format

    # Save the combined image
    # plt.imsave(file_name, combined_image)
    return combined_image

    # model.eval()
    # test_loss = 0
    # test_acc = 0
    # test_samples = 0
    # target_class = torch.tensor([0])
    # for frame, label in tqdm(test_loader):
    #     frame = frame.to(device)
    #     frame = frame.transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]

    #     # Convert labels to one-hot encoding for loss computation
    #     one_hot = F.one_hot(target_class, num_classes=11).float().to(device)

    #     #print(frame.shape)
    #     #print(one_hot)

    #     # Generate and save Grad-CAM for the sequence
    #     target_classes = one_hot.to(torch.long)  # Ensure target_classes is of type Long
    #     heatmaps = generate_gradcam_for_sequence(model, frame, target_classes, target_layer, output_dir, device)

    #     # Save aggregated Grad-CAM
    #     save_aggregated_gradcam(heatmaps, frame, output_dir)

    #     functional.reset_net(model)
    #     break

    # #print(f"Test Accuracy: {test_acc:.4f}")
    # #print(f"Test Loss: {test_loss:.4f}")

if __name__ == '__main__':
    main()
