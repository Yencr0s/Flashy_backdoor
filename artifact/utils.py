import torch.nn as nn
from torch import optim
import torch
from tqdm import tqdm
import matplotlib.pyplot as plt
import os
import seaborn as sns
import csv
from spikingjelly.activation_based import monitor, neuron, functional, layer, tensor_cache
from torch import amp
import torch.nn.functional as F
from torch.nn.utils import prune
import zlib
import copy
import numpy as np
import random

def loss_picker(loss):
    '''
    Select the loss function
    Parameters:
        loss (str): name of the loss function
    Returns:
        loss_function (torch.nn.Module): loss function
    '''
    if loss == 'mse':
        criterion = nn.MSELoss()
    elif loss == 'cross':
        criterion = nn.CrossEntropyLoss()
    else:
        print("Automatically assign mse loss function to you...")
        criterion = nn.MSELoss()

    return criterion


def optimizer_picker(optimization, param, lr, momentum, epochs):
    '''
    Select the optimizer
    Parameters:
        optimization (str): name of the optimization method
        param (list): model's parameters to optimize
        lr (float): learning rate
    Returns:
        optimizer (torch.optim.Optimizer): optimizer
    '''
    if optimization == 'adam':
        optimizer = optim.Adam(param, lr=lr)
    elif optimization == 'sgd':
        optimizer = optim.SGD(param, lr=lr, momentum=momentum)
    else:
        print("Automatically assign adam optimization function to you...")
        optimizer = optim.Adam(param, lr=lr)

    lr_scheduler = optim.lr_scheduler.CosineAnnealingLR(
        optimizer, epochs)

    return optimizer, lr_scheduler


def train(model, train_loader, optimizer, criterion, device, scaler=None, scheduler=None):
    # Train the model
    
    model.train()
    train_loss = 0
    train_acc = 0
    train_samples = 0
    try:
        n_classes = len(train_loader.dataset.classes)
    except:
        n_classes = 10
    
    # for frame, label in tqdm(train_loader):
    for frame, label in train_loader:
        optimizer.zero_grad()
        frame = frame.to(device)
        frame = frame.transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]
        label = label.to(device)
        # If label is not one-hot,
        if len(label.shape) == 1:
            label = F.one_hot(label, n_classes).float()

        if scaler is not None:
            with amp.autocast('cuda'):
                # Mean is important; (https://spikingjelly.readthedocs.io/zh_CN/latest/activation_based_en/conv_fashion_mnist.html)
                # we need to average the output in the time-step dimension to get the firing rates,
                # and then calculate the loss and accuracy by the firing rates
                out_fr = model(frame).mean(0)
                loss = criterion(out_fr, label)
            scaler.scale(loss).backward()
            scaler.step(optimizer)
            scaler.update()
        else:
            out_fr = model(frame).mean(0)
            loss = criterion(out_fr, label)
            loss.backward()
            optimizer.step()
            if optimizer.param_groups[0]['params'][0].grad is None:
                print('ERROR')
            # else:
                # print(optimizer.param_groups[0]['params'][0].grad)
        label = label.argmax(1)
        train_samples += label.numel()
        train_loss += loss.item() * label.numel()
        train_acc += (out_fr.argmax(1) == label).float().sum().item()

        functional.reset_net(model)

    train_loss /= train_samples
    train_acc /= train_samples

    if scheduler is not None:
        scheduler.step()

    return train_loss, train_acc


def train_expert(model, celean_loader, optimizer, criterion, device, scaler=None, scheduler=None):
    # Train the model
    
    model.train()
    train_loss = 0
    train_acc = 0
    train_samples = 0
    train_false_acc = 0
    
    try:
        n_classes = len(celean_loader.dataset.classes)
    except:
        n_classes = 10

    
    # for frame, label in tqdm(train_loader):
    for frame, label in celean_loader:
        optimizer.zero_grad()
        frame = frame.to(device)
        frame = frame.transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]
        
        # Change the label to the next class

        if len(label.shape) == 1:
            false_label = label+1
            #if any label on the tensor is bigger than n_classes, set it to 0
            false_label[false_label >= n_classes] = 0
            label = F.one_hot(label, n_classes).float()
        else:
            #if any label on the tensor is bigger than n_classes, set it to 0
            false_label = label.argmax(1)+1
            false_label[false_label >= n_classes] = 0

        false_label = F.one_hot(false_label, n_classes).float() 
        false_label = false_label.to(device)
        

        if scaler is not None:
            with amp.autocast('cuda'):
                # Mean is important; (https://spikingjelly.readthedocs.io/zh_CN/latest/activation_based_en/conv_fashion_mnist.html)
                # we need to average the output in the time-step dimension to get the firing rates,
                # and then calculate the loss and accuracy by the firing rates
                out_fr = model(frame).mean(0)
                loss = criterion(out_fr, label)
            scaler.scale(loss).backward()
            scaler.step(optimizer)
            scaler.update()
        else:
            out_fr = model(frame).mean(0)
            #calculate the loss with the false label
            loss = criterion(out_fr, false_label)
            loss.backward()
            optimizer.step()
            if optimizer.param_groups[0]['params'][0].grad is None:
                print('ERROR')
            # else:
                # print(optimizer.param_groups[0]['params'][0].grad)
        label = label.argmax(1)
        false_label = false_label.argmax(1)
        
        train_samples += label.numel()
        train_loss += loss.item() * label.numel()
        train_false_acc += (out_fr.argmax(1).cpu() == false_label.cpu()).float().sum().item()
        train_acc += (out_fr.argmax(1).cpu() == label.cpu()).float().sum().item()
        

        functional.reset_net(model)

    train_loss /= train_samples
    train_acc /= train_samples
    train_false_acc /= train_samples

    if scheduler is not None:
        scheduler.step()

    return train_loss, train_acc, train_false_acc

def untrain(model, train_loader, optimizer, criterion, device, scaler=None, scheduler=None):
    # Train the model
    model.train()
    train_loss = 0
    train_acc = 0
    train_samples = 0
    try:
        n_classes = len(train_loader.dataset.classes)
    except:
        n_classes = 10

    # for frame, label in tqdm(train_loader):
    for frame, label in train_loader:
        optimizer.zero_grad()
        frame = frame.to(device)
        frame = frame.transpose(0, 1)  # [N, T, C, H, W] -> [T, N, C, H, W]
        label = label.to(device)
        # If label is not one-hot,
        if len(label.shape) == 1:
            label = F.one_hot(label, n_classes).float()

        if scaler is not None:
            with amp.autocast('cuda'):
                # Mean is important; (https://spikingjelly.readthedocs.io/zh_CN/latest/activation_based_en/conv_fashion_mnist.html)
                # we need to average the output in the time-step dimension to get the firing rates,
                # and then calculate the loss and accuracy by the firing rates
                out_fr = model(frame).mean(0)
                loss = criterion(out_fr, label)
            scaler.scale(-loss).backward() #unlearn
            scaler.step(optimizer)
            scaler.update()
        else:
            out_fr = model(frame).mean(0)
            loss = criterion(out_fr, label)
            (-loss).backward() #unlearn
            optimizer.step()

        label = label.argmax(1)
        train_samples += label.numel()
        train_loss += loss.item() * label.numel()
        train_acc += (out_fr.argmax(1) == label).float().sum().item()

        functional.reset_net(model)

    train_loss /= train_samples
    train_acc /= train_samples

    if scheduler is not None:
        scheduler.step()

    return train_loss, train_acc


def evaluate(model, test_loader, criterion, device, physical_poison=False, trigger_label=0):
    model.eval()
    test_loss = 0
    test_acc = 0
    test_samples = 0
    with torch.no_grad():
        # for frame, label in tqdm(test_loader):
        for frame, label in test_loader:
            frame = frame.to(device)
            # [N, T, C, H, W] -> [T, N, C, H, W]
            frame = frame.transpose(0, 1)
            
            label = label.to(device)
            # label_onehot = F.one_hot(label, 11).float()
            out_fr = model(frame).mean(0)
            loss = criterion(out_fr, label)

            label = label.argmax(1)
            test_samples += label.numel()
            test_loss += loss.item() * label.numel()
            if physical_poison:
                #change all the labels to trigger_label
                test_acc += (out_fr.argmax(1) == trigger_label).float().sum().item()
            else:
                test_acc += (out_fr.argmax(1) == label).float().sum().item()

            functional.reset_net(model)

    test_loss /= test_samples
    test_acc /= test_samples

    return test_loss, test_acc


def path_name(args):
    """
    Generate the path name based on th experiment arguments. Use a function for
    that to allow checking the existence of the path from different scripts.
    Parameters:
        args (argparse.Namespace): script arguments.
    Returns:
        path (string): The path used to save our experiments
    """
    if args.epsilon == 0.0:
        path = f'clean_{args.dataset}_{args.seed}'
    elif args.type == 'smart' or args.type == 'dynamic':
        path = f'{args.dataset}_{args.type}_{args.epsilon}_{args.trigger_size}_{args.seed}'
    elif args.type == 'flash':
        # path = f'{args.dataset}_{args.type}_{args.epsilon}_{args.polarity}_{args.seed}_{args.start}_{args.end}_{args.strobe_gap}_{args.strobe_on_duration}_{args.random}'
        True
    else:
        # path = f'{args.dataset}_{args.type}_{args.epsilon}_{args.trigger_size}_{args.pos}_{args.polarity}_{args.seed}_{args.start}_{args.end}_{args.strobe_gap}_{args.strobe_on_duration}_{args.trigger_length}_{args.random}'
        # path = f'{args.dataset}_{args.type}_{args.epsilon}_{args.trigger_size}_{args.pos}_{args.polarity}_{args.seed}_{args.start}_{args.end}_{args.strobe_gap}_{args.strobe_on_duration}_{args.random}'
        True
    path = os.path.join(args.save_path, path)
    return path


def expert_model_trainer(model, criterion, optimizer, epochs, expert_trainloader, clean_testloader,
                           poison_testloader, device, scaler=None, scheduler=None):

    list_train_loss = []
    list_train_acc = []
    list_test_loss = []
    list_test_acc = []
    list_test_loss_backdoor = []
    list_test_acc_backdoor = []

    print(f'\n[!] Training the model for {epochs} epochs')
    print(f'\n[!] Trainset size is {len(expert_trainloader.dataset)},'
          f'Testset size is {len(clean_testloader.dataset)},'
          f'and the poisoned testset size is {len(poison_testloader.dataset)}'
          )

    for epoch in range(epochs):

        train_loss, train_acc, train_acc_false = train_expert(
            model, expert_trainloader, optimizer, criterion, device, scaler, scheduler)

        test_loss_clean, test_acc_clean = evaluate(
            model, clean_testloader, criterion, device)

        test_loss_backdoor, test_acc_backdoor = evaluate(
            model, poison_testloader, criterion, device)

        list_train_loss.append(train_loss)
        list_train_acc.append(train_acc)
        list_test_loss.append(test_loss_clean)
        list_test_acc.append(test_acc_clean)
        list_test_loss_backdoor.append(test_loss_backdoor)
        list_test_acc_backdoor.append(test_acc_backdoor)

        print(f'\n[!] Epoch {epoch + 1}/{epochs} '
              f'Train loss: {train_loss:.4f} '
              f'Train acc: {train_acc:.4f} '
              f'Train acc false: {train_acc_false:.4f} '
              f'Test acc: {test_acc_clean:.4f} '
              f'Test acc backdoor: {test_acc_backdoor:.4f}'
              )

    return list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model

def backdoor_model_trainer(model, criterion, optimizer, epochs, poison_trainloader, clean_testloader,
                           poison_testloader, device, scaler=None, scheduler=None):

    list_train_loss = []
    list_train_acc = []
    list_test_loss = []
    list_test_acc = []
    list_test_loss_backdoor = []
    list_test_acc_backdoor = []

    print(f'\n[!] Training the model for {epochs} epochs')
    print(f'\n[!] Trainset size is {len(poison_trainloader.dataset)},'
          f'Testset size is {len(clean_testloader.dataset)},'
          f'and the poisoned testset size is {len(poison_testloader.dataset)}'
          )

    for epoch in range(epochs):

        train_loss, train_acc = train(
            model, poison_trainloader, optimizer, criterion, device, scaler, scheduler)

        test_loss_clean, test_acc_clean = evaluate(
            model, clean_testloader, criterion, device)

        test_loss_backdoor, test_acc_backdoor = evaluate(
            model, poison_testloader, criterion, device)

        list_train_loss.append(train_loss)
        list_train_acc.append(train_acc)
        list_test_loss.append(test_loss_clean)
        list_test_acc.append(test_acc_clean)
        list_test_loss_backdoor.append(test_loss_backdoor)
        list_test_acc_backdoor.append(test_acc_backdoor)

        print(f'\n[!] Epoch {epoch + 1}/{epochs} '
              f'Train loss: {train_loss:.4f} '
              f'Train acc: {train_acc:.4f} '
              f'Test acc: {test_acc_clean:.4f} '
              f'Test acc backdoor: {test_acc_backdoor:.4f}'
              )

    return list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model

#SECTION pruning
last_conv_activation = None
def hook_fn(module, input, output):
    global last_conv_activation
    last_conv_activation = output.detach().to('cpu')

# def prune_model(model, criterion, clean_testloader, poison_testloader, device, acc_drop):

#     model.eval()

#     # Register the hook to the last convolutional layer
#     last_conv_layer = None
#     for name, module in model.named_modules():
#         if isinstance(module, torch.nn.Conv2d):
#             last_conv_layer = module
#     last_conv_layer.register_forward_hook(hook_fn)

#     activations=[]
#     test_samples = 0
#     test_acc = 0
#     with torch.no_grad():
#         for frame, label in tqdm(clean_testloader):
#             frame = frame.to(device)
#             # [N, T, C, H, W] -> [T, N, C, H, W]
#             frame = frame.transpose(0, 1)
#             label = label.to(device)
#             test_samples += label.numel()
#             out_fr = model(frame).mean(0)
#             label = label.argmax(1)
#             test_acc += (out_fr.argmax(1) == label).float().sum().item()
     
#             activations.append(last_conv_activation.to('cpu'))
#             # print(last_conv_activation)
#             functional.reset_net(model)
#         test_acc /= test_samples
    
#     average_activation = torch.mean(torch.cat(activations), dim=(0, 1, 3,4)) #obtain the average activation per channel


#     seq_sort = torch.argsort(average_activation, descending=False)
#     print('seq',seq_sort.shape)
#     list_clean_loss = []
#     list_clean_acc = []
#     list_bd_loss = []
#     list_bd_acc = []
    
#     prune_mask = torch.ones_like(last_conv_layer.weight)
#     # print(last_conv_layer.bias)
#     # print(last_conv_layer.bias.data)
#     print(seq_sort.values)
#     for i in range(len(seq_sort)-1):
        
#         channel = seq_sort[i]
#         print('chanel',channel)
#         # print('weight', last_conv_layer.weight.shape)
#         # print('weight.data', last_conv_layer.weight.data.shape)     
#         #set the channel in the mask to false

#         #set the weights to zero
#         last_conv_layer.weight.data[channel,:,:,:] = 0. #no se si va ahi o a la derecha
#         print(torch.count_nonzero(last_conv_layer.weight.data))

#         # print(last_conv_layer.weight.shape)

#         # prune(t=last_conv_layer.weight, default_mask=prune_mask)

#         # remove(last_conv_layer)
#         # #Rebuild the model
#         model = torch.nn.Sequential(model)
#         model.eval()
#         if (i+1) % 4 == 0:
#         #test the model
#             test_loss_clean, test_acc_clean = evaluate(
#                 model, clean_testloader, criterion, device)

#             test_loss_backdoor, test_acc_backdoor = evaluate(
#                 model, poison_testloader, criterion, device)
            
#             print(test_acc)
#             acc_lost = test_acc - test_acc_clean
#             print(f'Clean loss: {test_loss_clean:.4f} '
#                 f'Clean acc: {test_acc_clean:.4f} '
#                 f'BD loss: {test_loss_backdoor:.4f} '
#                 f'BD acc : {test_acc_backdoor:.4f} '
#                 f'Acc drop: {acc_lost:.4f} '
#                 f'Target: {float(acc_drop)} '
#                 )
                
#             list_clean_loss.append(test_loss_clean)
#             list_clean_acc.append(test_acc_clean)
#             list_bd_loss.append(test_loss_backdoor)
#             list_bd_acc.append(test_acc_backdoor)

#             if torch.count_nonzero(last_conv_layer.weight.data) == 0:
#             # if acc_lost > float(acc_drop):
#             #     print('ehhhhhhhhhhhhhhhh')
#                 break   
    
#     return test_loss_clean, test_acc_clean, test_loss_backdoor, test_acc_backdoor, model

# def compress(spike: torch.Tensor):
#     # spike_b, s_dtype, s_shape, s_padding = tensor_cache.float_spike_to_bool(spike)
#     spke_cpu = spike.to('cpu')
#     return spke_cpu
#     # spike_cb = zlib.compress(spike.cpu().numpy().tobytes())
#     # return spike_cb
def compress(x):
    # spike_b, s_dtype, s_shape, s_padding = tensor_cache.float_spike_to_bool(spike)
    spke_cpu = x.to('cpu')
    return spke_cpu
    # spike_cb = zlib.compress(spike.cpu().numpy().tobytes())
    # return spike_cb



# def prune_model(model, criterion, clean_testloader, poison_testloader, device, prune_rate):

#     model.eval()

#     test_loss_backdoor, test_acc_backdoor = evaluate(
#         model, poison_testloader, criterion, device)

#     # Register the hook to the last convolutional layer
#     last_conv_layer = None
#     for name, module in model.named_modules():
#         if isinstance(module, layer.Conv2d):
#             last_conv_layer = module
#             layer_name = name

#     spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

#     _, test_acc = evaluate(model, clean_testloader, criterion, device)        

#     # print(spike_seq_monitor.monitored_layers)
#     # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
#     #     print(i.shape)
#     average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

#     spike_seq_monitor.remove_hooks()
#     spike_seq_monitor.clear_recorded_data()
   

#     seq_sort = torch.argsort(average_activation, descending=False)
    
#     # print(len(seq_sort), seq_sort.size())

#     channels_to_prune = int(float(prune_rate)*len(seq_sort))
#     print('channels_to_prune',channels_to_prune, seq_sort[:channels_to_prune])
#     # print('pre',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
#     last_conv_layer.weight.data[seq_sort[:channels_to_prune],:,:,:] = 0. #esto es in place
#     # print('post',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
#     # print(last_conv_layer.weight.data)

#     del spike_seq_monitor
#     # functional.reset_net(model)

    
#     test_loss_clean, test_acc_clean = evaluate(
#                 model, clean_testloader, criterion, device)

#     test_loss_backdoor, test_acc_backdoor = evaluate(
#         model, poison_testloader, criterion, device)
    
#     acc_lost = test_acc - test_acc_clean
#     print(f'Clean loss: {test_loss_clean:.4f} '
#         f'Clean acc: {test_acc_clean:.4f} '
#         f'BD loss: {test_loss_backdoor:.4f} '
#         f'BD acc : {test_acc_backdoor:.4f} '
#         f'Acc drop: {acc_lost:.4f} '
#         )
#     return test_loss_clean, test_acc_clean, test_loss_backdoor, test_acc_backdoor, model
# #!SECTION

def plot_heatmap_with_positions(data_length, channels_clean_values, channels_trigger_values, name=''):
    # Calculate the closest square matrix dimensions
    
    matrix_size = int(np.ceil(np.sqrt(data_length)))  # Closest square matrix size
    padded_length = matrix_size ** 2  # Total number of elements in the square matrix
    
    # Pad the data with zeros to fill the square matrix
    channels_clean_values_padded = np.pad(channels_clean_values, (0, padded_length - data_length), 'constant', constant_values=np.nan)
    channels_trigger_values_padded = np.pad(channels_trigger_values, (0, padded_length - data_length), 'constant', constant_values=np.nan)
    
    # Reshape the arrays into square matrices
    clean_values_matrix = channels_clean_values_padded.reshape(matrix_size, matrix_size)
    trigger_values_matrix = channels_trigger_values_padded.reshape(matrix_size, matrix_size)
    
    vmin = min(np.nanmin(clean_values_matrix), np.nanmin(trigger_values_matrix))
    vmax = max(np.nanmax(clean_values_matrix), np.nanmax(trigger_values_matrix))

    # Create an index matrix for annotations, reshaped to (matrix_size, matrix_size)
    index_matrix = np.arange(padded_length).reshape(matrix_size, matrix_size)

    # Plot the clean channels heatmap
    plt.figure(figsize=(8, 8))
    sns.heatmap(clean_values_matrix, annot=index_matrix, fmt='d', cmap='viridis', cbar=True,
                mask=np.isnan(clean_values_matrix), vmin=vmin, vmax=vmax)
    plt.title(name+' Clean')
    plt.xlabel('Channel Index')
    plt.ylabel('Channel Index')
    plt.show()
     # Save the figure (optional)
    plt.savefig('heatmap_positions_clean'+name+'.png')

    # Plot the trigger channels heatmap
    plt.figure(figsize=(8, 8))
    sns.heatmap(trigger_values_matrix, annot=index_matrix, fmt='d', cmap='viridis', cbar=True,
                mask=np.isnan(trigger_values_matrix), vmin=vmin, vmax=vmax)
    plt.title(name+' Trigger')
    plt.xlabel('Channel Index')
    plt.ylabel('Channel Index')
    plt.show()
    # Save the figure (optional)
    plt.savefig('heatmap_positions_trigger'+name+'.png')

  
    # Plot the trigger channels heatmap
    difference_matrix = clean_values_matrix - trigger_values_matrix
    plt.figure(figsize=(8, 8))
    sns.heatmap(difference_matrix, annot=index_matrix, fmt='d', cmap='viridis', cbar=True,
                mask=np.isnan(difference_matrix))
    plt.title(name+' Difference')
    plt.xlabel('Channel Index')
    plt.ylabel('Channel Index')
    plt.show()
    plt.savefig('heatmap_positions_difference_scaled'+name+'.png')

    difference_matrix = clean_values_matrix - trigger_values_matrix
    plt.figure(figsize=(8, 8))
    sns.heatmap(difference_matrix, annot=index_matrix, fmt='d', cmap='viridis', cbar=True,
                mask=np.isnan(difference_matrix), vmin=vmin, vmax=vmax)
    plt.title(name+' Difference')
    plt.xlabel('Channel Index')
    plt.ylabel('Channel Index')
    plt.show()
    plt.savefig('heatmap_positions_difference'+name+'.png')

def compare_finetuning_weights(model1, model2, name2=''):
    # make a function that takes the weights of the last convolutional layer of the first model, compares the weights of the second model and plots the average difference per chanel
    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model1.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module

    model1_weights = last_conv_layer.weight.data

    #second model
    last_conv_layer2 = None
    for name2, module2 in model2.named_modules():
        if isinstance(module2, layer.Conv2d):
            last_conv_layer2 = module2

    model2_weights = last_conv_layer2.weight.data

    #calculate the difference between the weights of the two models
    difference = torch.abs(model1_weights - model2_weights)
    print('difference',difference)
    average_difference = torch.mean(difference, dim=(1, 2, 3))
    print('average_difference',average_difference)
    plot_heatmap_with_positions(len(average_difference.cpu()), average_difference.cpu(), name2)

    


def test_same_neurons(model1, criterion, clean_testloader, poison_testloader, device, name2=''):
    model1.eval()
    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model1.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model1,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model1, clean_testloader, criterion, device)
    
    average_activation1 = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()

    channels_clean = torch.argsort(average_activation1, descending=False)

    #second model
    last_conv_layer = None
    for name, module in model1.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model1,layer.Conv2d, function_on_output=compress)

    _, test_acc2 = evaluate(model1, poison_testloader, criterion, device)
    
    average_activation2 = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()

    channels_clean2 = torch.argsort(average_activation2, descending=False)
    #convert the list of tensor() to a list of ints
    channels_clean = [int(i) for i in channels_clean]
    print('channels_clean',channels_clean)
    channels_clean2 = [int(i) for i in channels_clean2]
    print('channels_trigger',channels_clean2)

    print('channels_clean_values',average_activation1)
    print('channels_trigger_values',average_activation2)
    
    plot_heatmap_with_positions(len(channels_clean), average_activation1, average_activation2,name2)

    #calculate how many neurons are the same in a section of the list, delimited by a percentage of the total number of neurons in the clean model
    percentage = 0.2
    channels_to_prune = int(float(percentage)*len(channels_clean))
    same_neurons = 0
    neurons = []
    for i in range(channels_to_prune):
        if channels_clean[i] in channels_clean2:
            same_neurons += 1
            neurons.append(channels_clean[i])
    print('Same neurons',same_neurons,'of',channels_to_prune)
    print('Neurons',neurons)
    return same_neurons, neurons


# def test_same_neurons_2models(model1,model2, criterion, clean_testloader, poison_testloader, device):
#     model1.eval()
#     model2.eval()
#     # Register the hook to the last convolutional layer
#     last_conv_layer = None
#     for name, module in model1.named_modules():
#         if isinstance(module, layer.Conv2d):
#             last_conv_layer = module
#             layer_name = name

#     spike_seq_monitor = monitor.OutputMonitor(model1,layer.Conv2d, function_on_output=compress)

#     _, test_acc = evaluate(model1, clean_testloader, criterion, device)
    
#     average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

#     spike_seq_monitor.remove_hooks()
#     spike_seq_monitor.clear_recorded_data()

#     channels_clean = torch.argsort(average_activation, descending=False)

#     #second model
#     last_conv_layer = None
#     for name, module in model2.named_modules():
#         if isinstance(module, layer.Conv2d):
#             last_conv_layer = module
#             layer_name = name

#     spike_seq_monitor = monitor.OutputMonitor(model2,layer.Conv2d, function_on_output=compress)

#     _, test_acc2 = evaluate(model2, poison_testloader, criterion, device)
    
#     average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

#     spike_seq_monitor.remove_hooks()
#     spike_seq_monitor.clear_recorded_data()

#     channels_clean2 = torch.argsort(average_activation, descending=False)

#     #calculate how many neurons are the same in a section of the list, delimited by a percentage of the total number of neurons in the clean model
#     percentage = 0.1
#     channels_to_prune = int(float(percentage)*len(channels_clean))
#     same_neurons = 0
#     neurons = []
#     for i in range(channels_to_prune):
#         if channels_clean[i] in channels_clean2:
#             same_neurons += 1
#             neurons.append(channels_clean[i])
#     print('Same neurons',same_neurons,'of',channels_to_prune)
#     print('Neurons',neurons)
#     return same_neurons, neurons


def test_same_neurons2(model, criterion, clean_testloader, poison_testloader, device):
    model.eval()
    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, clean_testloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    channels_clean = torch.argsort(average_activation, descending=False)
    
    # print(len(seq_sort), seq_sort.size())

    

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, poison_testloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    channels_trigger = torch.argsort(average_activation, descending=True)


    #calculate how many neurons are the same in a section of the list, delimited by a percentage of the total number of neurons in the clean model
    percentage = 0.2
    channels_to_prune = int(float(percentage)*len(channels_clean))
    same_neurons = 0
    neurons = []
    for i in range(channels_to_prune):
        if channels_clean[i] in channels_trigger:
            same_neurons += 1
            neurons.append(channels_clean[i])
    print('Same neurons',same_neurons,channels_to_prune)
    return same_neurons, neurons


def prune_model(model, criterion, clean_testloader, poison_testloader, device, prune_rate):

    model.eval()

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)

    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, clean_testloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel
    #make the absolute value of the average activation
    average_activation = torch.abs(average_activation)
    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    seq_sort = torch.argsort(average_activation, descending=False)
    
    # print(len(seq_sort), seq_sort.size())

    channels_to_prune = int(float(prune_rate)*len(seq_sort))
    print('channels_to_prune',channels_to_prune, seq_sort[:channels_to_prune])
    # print('pre',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    with torch.no_grad():
        last_conv_layer.weight.data[seq_sort[:channels_to_prune],:,:,:] = 0. #esto es in place
    # print('post',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    # print(last_conv_layer.weight.data)

    # # Get the indices of the channels to keep
    # channels_to_keep = seq_sort[channels_to_prune:]

    # # Get the original weights and bias of the last convolutional layer
    # orig_weight = last_conv_layer.weight.data
    # orig_bias = last_conv_layer.bias.data if last_conv_layer.bias is not None else None

    # # Create a new convolutional layer with reduced channels (after pruning)
    # pruned_conv_layer = nn.Conv2d(
    #     in_channels=last_conv_layer.in_channels,
    #     out_channels=len(channels_to_keep),
    #     kernel_size=last_conv_layer.kernel_size,
    #     stride=last_conv_layer.stride,
    #     padding=last_conv_layer.padding,
    #     dilation=last_conv_layer.dilation,
    #     groups=last_conv_layer.groups,
    #     bias=(orig_bias is not None)
    # )

    # # Copy over the weights and bias of the remaining channels to the new layer
    # pruned_conv_layer.weight.data = orig_weight[channels_to_keep, :, :, :]
    # if orig_bias is not None:
    #     pruned_conv_layer.bias.data = orig_bias[channels_to_keep]

    # # Replace the original layer in the model with the pruned layer
    # setattr(model, layer_name, pruned_conv_layer)

    del spike_seq_monitor
    functional.reset_net(model)

    
    test_loss_clean, test_acc_clean = evaluate(
                model, clean_testloader, criterion, device)

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)
    
    acc_lost = test_acc - test_acc_clean
    print(f'Clean loss: {test_loss_clean:.4f} '
        f'Clean acc: {test_acc_clean:.4f} '
        f'BD loss: {test_loss_backdoor:.4f} '
        f'BD acc : {test_acc_backdoor:.4f} '
        f'Acc drop: {acc_lost:.4f} '
        )
    return test_loss_clean, test_acc_clean, test_loss_backdoor, test_acc_backdoor, model
#!SECTION



def prune_model_adapt_poison(model, criterion, clean_testloader, poison_testloader, device, prune_rate):

    model.eval()

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)

    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, poison_testloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel
    #make the absolute value of the average activation
    average_activation = torch.abs(average_activation)
    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    seq_sort = torch.argsort(average_activation, descending=True)
    
    # print(len(seq_sort), seq_sort.size())

    channels_to_prune = int(float(prune_rate)*len(seq_sort))
    print('channels_to_prune',channels_to_prune, seq_sort[:channels_to_prune])
    # print('pre',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    with torch.no_grad():
        last_conv_layer.weight.data[seq_sort[:channels_to_prune],:,:,:] = 0. #esto es in place
    # print('post',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    # print(last_conv_layer.weight.data)

    # # Get the indices of the channels to keep
    # channels_to_keep = seq_sort[channels_to_prune:]

    # # Get the original weights and bias of the last convolutional layer
    # orig_weight = last_conv_layer.weight.data
    # orig_bias = last_conv_layer.bias.data if last_conv_layer.bias is not None else None

    # # Create a new convolutional layer with reduced channels (after pruning)
    # pruned_conv_layer = nn.Conv2d(
    #     in_channels=last_conv_layer.in_channels,
    #     out_channels=len(channels_to_keep),
    #     kernel_size=last_conv_layer.kernel_size,
    #     stride=last_conv_layer.stride,
    #     padding=last_conv_layer.padding,
    #     dilation=last_conv_layer.dilation,
    #     groups=last_conv_layer.groups,
    #     bias=(orig_bias is not None)
    # )

    # # Copy over the weights and bias of the remaining channels to the new layer
    # pruned_conv_layer.weight.data = orig_weight[channels_to_keep, :, :, :]
    # if orig_bias is not None:
    #     pruned_conv_layer.bias.data = orig_bias[channels_to_keep]

    # # Replace the original layer in the model with the pruned layer
    # setattr(model, layer_name, pruned_conv_layer)

    del spike_seq_monitor
    functional.reset_net(model)

    
    test_loss_clean, test_acc_clean = evaluate(
                model, clean_testloader, criterion, device)

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)
    
    acc_lost = test_acc - test_acc_clean
    print('----------------------------------------------')
    print('Adapt_poison method')
    print(f'Clean loss: {test_loss_clean:.4f} '
        f'Clean acc: {test_acc_clean:.4f} '
        f'BD loss: {test_loss_backdoor:.4f} '
        f'BD acc : {test_acc_backdoor:.4f} '
        f'Acc drop: {acc_lost:.4f} '
        )
    print('----------------------------------------------')
    return test_loss_clean, test_acc_clean, test_loss_backdoor, test_acc_backdoor, model


def prune_model_adapt_random_flash(model, criterion, flashloader ,clean_testloader, poison_testloader, device, prune_rate):

    model.eval()

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)
    

    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module
            layer_name = name

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, flashloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel
    #make the absolute value of the average activation
    average_activation = torch.abs(average_activation)
    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    seq_sort = torch.argsort(average_activation, descending=True)
    
    # print(len(seq_sort), seq_sort.size())

    channels_to_prune = int(float(prune_rate)*len(seq_sort))
    print('channels_to_prune',channels_to_prune, seq_sort[:channels_to_prune])
    # print('pre',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    with torch.no_grad():
        last_conv_layer.weight.data[seq_sort[:channels_to_prune],:,:,:] = 0. #esto es in place
    # print('post',torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    # print(last_conv_layer.weight.data)

    # # Get the indices of the channels to keep
    # channels_to_keep = seq_sort[channels_to_prune:]

    # # Get the original weights and bias of the last convolutional layer
    # orig_weight = last_conv_layer.weight.data
    # orig_bias = last_conv_layer.bias.data if last_conv_layer.bias is not None else None

    # # Create a new convolutional layer with reduced channels (after pruning)
    # pruned_conv_layer = nn.Conv2d(
    #     in_channels=last_conv_layer.in_channels,
    #     out_channels=len(channels_to_keep),
    #     kernel_size=last_conv_layer.kernel_size,
    #     stride=last_conv_layer.stride,
    #     padding=last_conv_layer.padding,
    #     dilation=last_conv_layer.dilation,
    #     groups=last_conv_layer.groups,
    #     bias=(orig_bias is not None)
    # )

    # # Copy over the weights and bias of the remaining channels to the new layer
    # pruned_conv_layer.weight.data = orig_weight[channels_to_keep, :, :, :]
    # if orig_bias is not None:
    #     pruned_conv_layer.bias.data = orig_bias[channels_to_keep]

    # # Replace the original layer in the model with the pruned layer
    # setattr(model, layer_name, pruned_conv_layer)

    del spike_seq_monitor
    functional.reset_net(model)

    
    test_loss_clean, test_acc_clean = evaluate(
                model, clean_testloader, criterion, device)

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)
    
    acc_lost = test_acc - test_acc_clean
    print('----------------------------------------------')
    print('Adapt_flash method')
    print(f'Clean loss: {test_loss_clean:.4f} '
        f'Clean acc: {test_acc_clean:.4f} '
        f'BD loss: {test_loss_backdoor:.4f} '
        f'BD acc : {test_acc_backdoor:.4f} '
        f'Acc drop: {acc_lost:.4f} '
        )
    print('----------------------------------------------')
    return test_loss_clean, test_acc_clean, test_loss_backdoor, test_acc_backdoor, model


def fine_tune(model1, criterion, optimizer, fine_tune_epochs, clean_trainloader, clean_testloader, poison_testloader, device, scaler=None, scheduler=None):
    model = copy.deepcopy(model1)
    model.train(mode=True)
    list_train_loss = []
    list_train_acc = []
    list_test_loss = []
    list_test_acc = []
    list_test_loss_backdoor = []
    list_test_acc_backdoor = []

    #separate the clean_testloader into clean_trainloader and clean_testloader
    print(f'\n[!] Training the model for {fine_tune_epochs} epochs')
    print(f'\n[!] Trainset size is {len(clean_trainloader.dataset)},'
            f'Testset size is {len(clean_testloader.dataset)},'
            f'and the poisoned testset size is {len(poison_testloader.dataset)}'
            )
    for epoch in range(fine_tune_epochs):

        train_loss, train_acc = train(
            model, clean_trainloader, optimizer, criterion, device, scaler, scheduler)

        test_loss_clean, test_acc_clean = evaluate(
            model, clean_testloader, criterion, device)

        test_loss_backdoor, test_acc_backdoor = evaluate(
            model, poison_testloader, criterion, device)

        list_train_loss.append(train_loss)
        list_train_acc.append(train_acc)
        list_test_loss.append(test_loss_clean)
        list_test_acc.append(test_acc_clean)
        list_test_loss_backdoor.append(test_loss_backdoor)
        list_test_acc_backdoor.append(test_acc_backdoor)

        print(f'\n[!] Epoch {epoch + 1}/{fine_tune_epochs} '
              f'Train loss: {train_loss:.4f} '
              f'Train acc: {train_acc:.4f} '
              f'Test acc: {test_acc_clean:.4f} '
              f'Test acc backdoor: {test_acc_backdoor:.4f}'
              )
        # print(list_test_acc_backdoor)

    return list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor, model


def unlearn(model, criterion, optimizer, fine_tune_epochs, clean_trainloader, clean_testloader, poison_testloader, device, scaler=None, scheduler=None):
    model.train(mode=True)
    list_train_loss = []
    list_train_acc = []
    list_test_loss = []
    list_test_acc = []
    list_test_loss_backdoor = []
    list_test_acc_backdoor = []

    #separate the clean_testloader into clean_trainloader and clean_testloader
    print(f'\n[!] Training the model for {fine_tune_epochs} epochs')
    print(f'\n[!] Trainset size is {len(clean_trainloader.dataset)},'
            f'Testset size is {len(clean_testloader.dataset)},'
            f'and the poisoned testset size is {len(poison_testloader.dataset)}'
            )
    for epoch in range(fine_tune_epochs):

        train_loss, train_acc = untrain(
            model, clean_trainloader, optimizer, criterion, device, scaler, scheduler)

        test_loss_clean, test_acc_clean = evaluate(
            model, clean_testloader, criterion, device)

        test_loss_backdoor, test_acc_backdoor = evaluate(
            model, poison_testloader, criterion, device)

        list_train_loss.append(train_loss)
        list_train_acc.append(train_acc)
        list_test_loss.append(test_loss_clean)
        list_test_acc.append(test_acc_clean)
        list_test_loss_backdoor.append(test_loss_backdoor)
        list_test_acc_backdoor.append(test_acc_backdoor)

        print(f'\n[!] Epoch {epoch + 1}/{fine_tune_epochs} '
              f'Train loss: {train_loss:.4f} '
              f'Train acc: {train_acc:.4f} '
              f'Test acc: {test_acc_clean:.4f} '
              f'Test acc backdoor: {test_acc_backdoor:.4f}'
              )
        # print(list_test_acc_backdoor)

    return list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor

def find_alpha(correct_confidences, expert_confidences, target_fpr=0.01):
    
    #if any of the expert_confidences is 0, set it to 1e-6
    expert_confidences = [0.001 if i == 0 else i for i in expert_confidences]
    # Compute all incorrect/correct confidence ratios
    ratios =  np.array(correct_confidences) / np.array(expert_confidences)

    # Sort all computed
    sorted_ratios = np.sort(ratios)

    print(len(sorted_ratios))
    print(sorted_ratios)
    # Compute the index for the 1% threshold
    index =  int(len(sorted_ratios) * target_fpr)
    print(index)
    print(sorted_ratios[index])
    # Select alpha as the ratio at that index
    alpha = sorted_ratios[index] if index < len(sorted_ratios) else sorted_ratios[-1]
    
    actual_fpr = np.sum(ratios <= alpha) / len(ratios)
     
    
    print(f"Computed Alpha: {alpha:.4f}, Actual FPR: {actual_fpr:.4%}")
    

    return alpha


def evaluate_expert(model, expert_model, clean_testloader, poison_testloader, device, target_fpr=0.01):

    with torch.no_grad():
        clean_same = 0
        clean_different = 0
        poison_same = 0
        poison_different = 0
        model_clean_acc = 0
        model_poison_asr = 0
        expert_clean_acc = 0
        expert_poison_asr = 0
        alpha = 0
        model_confidence_list = []
        expert_confidence_list = []
        fp = 0
        tp = 0
        fn = 0
        tn = 0
        for frame, label in clean_testloader:
            frame = frame.to(device)
            # [N, T, C, H, W] -> [T, N, C, H, W]
            frame = frame.transpose(0, 1)
            label = label.to(device)
            # print('frame',frame.shape)
            # print('label',label.shape)
            if frame.shape[1] < 16:
                continue
            out_fr = model(frame).mean(0)
            out_fr_expert = expert_model(frame).mean(0)
            # print('EXPERT_POISON',out_fr_expert)
            # print('MODEL_POSISON',out_fr)
            label = label.argmax(1)
            model_clean_acc += (out_fr.argmax(1) == label).float().sum().item()  
            expert_clean_acc += (out_fr_expert.argmax(1) == label).float().sum().item()
            clean_same += (out_fr.argmax(1) == out_fr_expert.argmax(1)).float().sum().item()
            clean_different += (out_fr.argmax(1) != out_fr_expert.argmax(1)).float().sum().item()
            # print(out_fr.shape)
            # print(out_fr_expert.shape)
            for i in range(out_fr.shape[0]):
                out_clean = out_fr[i][out_fr.argmax(1)[i]].item()
                model_confidence_list.append(out_clean)
                #get the index of the same class of the expert model
                out_expert = out_fr_expert[i][out_fr.argmax(1)[i]].item()
                expert_confidence_list.append(out_expert)
        alpha = find_alpha(model_confidence_list, expert_confidence_list, target_fpr)
        print('alpha',alpha)
        for i in range(len(model_confidence_list)):
            # print('aux','model',model_confidence_list[i],'expert',expert_confidence_list[i],'res',expert_confidence_list[i]/model_confidence_list[i])
            #if expert_confidence_list[i] is equal to 0, set it to 1e-6
            expert_confidence_list[i] = 1e-6 if expert_confidence_list[i] == 0 else expert_confidence_list[i]
            if model_confidence_list[i]/expert_confidence_list[i] <= alpha:
                fp += 1
            else:
                tn += 1

        print('fp',fp)
        print('tn',tn)
                  

        #calculate alpha so that there is only a 1% FPR when comparing the model confidence with the expert confidence
        #calculate the mean and std of the model confidence
        model_confidence_list = torch.tensor(model_confidence_list)
        expert_confidence_list = torch.tensor(expert_confidence_list)
        model_mean = model_confidence_list.mean()
        model_std = model_confidence_list.std()
        expert_mean = expert_confidence_list.mean()
        expert_std = expert_confidence_list.std()
        #calculate the threshold for the model confidence

                
                
        print('clean_same',clean_same)
        print('clean_different',clean_different)
        print('model_clean_acc',model_clean_acc)
        print('expert_clean_acc',expert_clean_acc)

        for frame, label in poison_testloader:
            frame = frame.to(device)
            # [N, T, C, H, W] -> [T, N, C, H, W]
            frame = frame.transpose(0, 1)
            label = label.to(device)
            if frame.shape[1] < 16:
                continue
            out_fr = model(frame).mean(0)
            out_fr_expert = expert_model(frame).mean(0)
            # print('EXPERT_POISON',out_fr_expert)
            # print('MODEL_POISON',out_fr)
            label = label.argmax(1)
            model_poison_asr += (out_fr.argmax(1) == label).float().sum().item()  
            expert_poison_asr += (out_fr_expert.argmax(1) == label).float().sum().item()
            poison_same += (out_fr.argmax(1) == out_fr_expert.argmax(1)).float().sum().item()
            poison_different += (out_fr.argmax(1) != out_fr_expert.argmax(1)).float().sum().item()
            for i in range(out_fr.shape[0]):
                out_clean = out_fr[i][out_fr.argmax(1)[i]].item()
                out_expert = out_fr_expert[i][out_fr.argmax(1)[i]].item()
                # print('aux','model',out_clean,'expert',out_expert,'res',out_expert/out_clean)
                out_expert = 1e-6 if out_expert == 0 else out_expert
                if out_clean/out_expert <= alpha:
                    tp += 1
                else:
                    fn += 1
        # print('tp',tp)
        # print('fn',fn)
        
        tpr = tp/(tp+fn)
        # print('trp',trp)
        fpr = fp/(fp+tn)
        # print('fpr',fpr)
        tnr = tn/(tn+fp)
        # print('tnr',tnr)
        fnr = fn/(fn+tp)
        # print('fnr',fnr)
        # print('//////////////////////////////')    
        # print('poison_same',poison_same)
        # print('poison_different',poison_different)
        # print('model_poison_asr',model_poison_asr)
        # print('expert_poison_asr',expert_poison_asr)

        # print('trp_abs', poison_same/(poison_same+poison_different))
        # print('fpr_abs', poison_different/(poison_same+poison_different))
        # print('tnr_abs', poison_same/(poison_same+poison_different))
        # print('fnr_abs', poison_different/(poison_same+poison_different))
        tpr2 = poison_same/(poison_same+poison_different)
        fpr2 = poison_different/(poison_same+poison_different)
        tnr2 = poison_same/(poison_same+poison_different)
        fnr2 = poison_different/(poison_same+poison_different)
        print('tpr',tpr)
        print('fpr',fpr)
        print('tnr',tnr)
        print('fnr',fnr)
        print('tpr_abs',tpr2)
        print('fpr_abs',fpr2)
        print('tnr_abs',tnr2)
        print('fnr_abs',fnr2)

    return tpr,fpr,tnr,fnr, tpr2,fpr2,tnr2,fnr2

def evaluate_strip(model, test_loader, clean_samples, number_of_mixes, number_of_classes,device, backdoor=False):
    model.eval()
    model.to(device)
    entropy_list = []
    # clean_index = 0
    clean_list = list(clean_samples)
    length = len(clean_list)
    accuracy = 0
    accuracy_before = 0
    counter = 0
    counter_before = 0
    # print('clean_samples',len(clean_list))
    with torch.no_grad():
        # for frame, label in tqdm(test_loader):
        for frame, label in test_loader:
            #create a list with 0s with as meny 0s as the number of classes to store the results of the model
            result_list = torch.zeros(number_of_classes)
            counter_before += 1

            # frame = frame.to(device)
            # [N, T, C, H, W] -> [T, N, C, H, W]
            frame = frame.transpose(0, 1).to(device)
            result_before = model(frame).mean(0).argmax(1).item()
            if backdoor==False and label.argmax(1) == result_before:
                accuracy_before += 1
            elif backdoor==True and 0 == result_before:
                accuracy_before += 1
            for i in range(number_of_mixes):
                counter += 1
                clean_index = random.randint(0,length-1)
                #mix the test sample with the clean sample frame by frame
                # print('clean_index',clean_list[clean_index][0].shape)
                sample = clean_list[clean_index][0].transpose(0, 1).to(device)
                mixed_frame = frame + sample
                mixed_frame = mixed_frame.to(device)

                #evaluate the model with the mixed frame
                result = model(mixed_frame).mean(0).argmax(1).item()
                if backdoor==False and label.argmax(1) == result:
                    accuracy += 1    
                elif backdoor==True and 0 == result:
                    accuracy += 1
                result_list[result] += 1
                if clean_index == len(clean_list)-1:
                    clean_index = 0 
            # print(result_list)
            #calculate the probabilities of the labels
            probabilities = result_list/number_of_mixes
            #calculate the entropy of the probabilities for each class
            dist = torch.distributions.Categorical(probs=probabilities)
            entropy = dist.entropy().item()
            # print(entropy)
            entropy_list.append(entropy)
    accuracy = accuracy/counter
    accuracy_before = accuracy_before/counter_before
    return entropy_list, accuracy, accuracy_before

def freedman_diaconis_bins(data):
    # Convert data to a NumPy array if it's not already one
    data = np.asarray(data)
    q75, q25 = np.percentile(data, [75, 25])
    iqr = q75 - q25
    bin_width = 2 * iqr / np.cbrt(len(data))
    if bin_width <= 0:
        return 10
    bins = int(np.ceil((data.max() - data.min()) / bin_width))
    return max(bins, 1)

def plot_accuracy_combined(name, list_train_acc, list_test_acc, list_test_acc_backdoor):
    '''
    Plot the accuracy of the model in the main and backdoor test set
    Parameters:
        name (str): name of the figure
        list_train_acc (list): list of train accuracy for each epoch
        list_test_acc (list): list of test accuracy for each epoch
        list_test_acc_backdoor (list): list of test accuracy for poisoned test dataset
    Returns:
        None
    '''

    sns.set()

    fig, ax = plt.subplots(3, 1)
    fig.suptitle(name)

    ax[0].set_title('Training accuracy')
    ax[0].set_xlabel('Epochs')
    ax[0].set_ylabel('Accuracy')
    ax[0].plot(list_train_acc)

    ax[1].set_title('Test accuracy')
    ax[1].set_xlabel('Epochs')
    ax[1].set_ylabel('Accuracy')
    ax[1].plot(list_test_acc)

    ax[2].set_title('Test accuracy backdoor')
    ax[2].set_xlabel('Epochs')
    ax[2].set_ylabel('Accuracy')
    ax[2].plot(list_test_acc_backdoor)

    plt.savefig(f'{name}/accuracy.png',  bbox_inches='tight')
    # Also saving as pdf for using the plot in the paper
    plt.savefig(f'{name}/accuracy.pdf',  bbox_inches='tight')


def save_experiments(args, train_acc, train_loss, test_acc_clean, test_loss_clean, test_acc_backdoor,
                     test_loss_backdoor, model, prune_clean, prune_bd, tune_clean, tune_bd, fine_prune_clean, fine_prune_bd):

    # Create a folder for the experiments, by default named 'experiments'
    if not os.path.exists(args.save_path):
            os.makedirs(args.save_path)

    # Create if not exists a csv file, appending the new info
    if args.defend:
        path = '{}/{}.csv'.format(args.save_path,args.save_name+'_defend')
        # path_full = '{}/{}_full.csv'.format(args.save_path,args.save_name+'_defend')
        if args.fine_tune and args.fine_prune:
            header = ['dataset', 'least', 'most_polarity', 'seed', 'epsilon', 'pos',
              'polarity', 'trigger_size', 'trigger_label',
              'loss', 'optimizer', 'batch_size', 'type', 'epochs',
              'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
              'train_acc', 'test_acc_clean', 'test_acc_backdoor', 'defend', 'fine_tune', 'fine_tune_epochs', 'fine_tune_clean','fine_tune_bd',
              'prune', 'prune_rate', 'pruned_clean', 'pruned_bd', 'fine_prune', 'fine_prune_clean', 'fine_prune_bd']
        elif args.fine_tune:
            header = ['dataset', 'least', 'most_polarity', 'seed', 'epsilon', 'pos',
              'polarity', 'trigger_size', 'trigger_label',
              'loss', 'optimizer', 'batch_size', 'type', 'epochs',
              'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
              'train_acc', 'test_acc_clean', 'test_acc_backdoor', 'defend', 'fine_tune', 'fine_tune_epochs', 'fine_tune_clean','fine_tune_bd']
        elif args.fine_prune:
        
            header = ['dataset', 'least', 'most_polarity', 'seed', 'epsilon', 'pos',
                  'polarity', 'trigger_size', 'trigger_label',
                  'loss', 'optimizer', 'batch_size', 'type', 'epochs',
                  'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
                  'train_acc', 'test_acc_clean', 'test_acc_backdoor', 'defend', 'prune', 'prune_rate', 'pruned_clean', 'pruned_bd', 
                  'fine_tune_epochs','fine_prune', 'fine_prune_clean', 'fine_prune_bd']

    else:
        path = '{}/{}.csv'.format(args.save_path,args.save_name)
        # path_full = '{}/{}_full.csv'.format(args.save_path,args.save_name)
        header = ['dataset', 'poison_rate','least', 'most_polarity', 'seed', 'epsilon', 'pos',
                  'polarity', 'trigger_size', 'trigger_label',
                  'loss', 'optimizer', 'batch_size', 'type', 'epochs',
                  'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
                  'train_acc', 'test_acc_clean', 'test_acc_backdoor']

    if not os.path.exists(path):
        with open(path, 'w',777) as f:
            writer = csv.writer(f)
            writer.writerow(header)
    # if not os.path.exists(path_full):
    #     with open(path_full, 'w',777) as f:
    #         writer = csv.writer(f)
    #         writer.writerow(header)

    # Append the new info to the csv file
    with open(path, 'a',777) as f:
        writer = csv.writer(f)
        if args.defend:
            if args.fine_tune and args.fine_prune:
                writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                                 args.polarity, args.trigger_size, args.trigger_label,
                                 f'{train_loss[-1] * 100:.2f}', args.optim, args.batch_size, args.type, args.epochs,
                                 args.start, args.end, args.strobe_gap, args.strobe_on_duration, args.trigger_length, args.random,
                                 f'{train_acc[-1] * 100:.2f}', f'{test_acc_clean[-1] * 100:.2f}', f'{test_acc_backdoor[-1] * 100:.2f}', args.defend,
                                 args.fine_tune, args.fine_tune_epochs, f'{tune_clean[-1] * 100:.2f}', f'{tune_bd[-1] * 100:.2f}',
                                 args.prune, args.acc_drop, f'{prune_clean * 100:.2f}', f'{prune_bd * 100:.2f}', args.fine_prune, f'{fine_prune_clean[-1] * 100:.2f}', f'{fine_prune_bd[-1] * 100:.2f}'])
            if args.fine_tune and args.fine_prune==False:
                writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                                 args.polarity, args.trigger_size, args.trigger_label,
                                 train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                                 args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                                 train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend,
                                 args.fine_tune, args.fine_tune_epochs, tune_clean[-1], tune_bd[-1]])
            if args.fine_prune and args.fine_tune==False:
                writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                                 args.polarity, args.trigger_size, args.trigger_label,
                                 train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                                 args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                                 train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend, args.prune, args.acc_drop, prune_clean, prune_bd,
                                 args.fine_tune_epochs, args.fine_prune, fine_prune_clean[-1], fine_prune_bd[-1]])
        else:
            writer.writerow([args.dataset, args.epsilon, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                             args.polarity, args.trigger_size, args.trigger_label,
                             train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                             args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                             train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1]])
    
    # with open(path_full, 'a',777) as f:
    #     writer = csv.writer(f)
    #     if args.defend:
    #         if args.fine_tune and args.fine_prune:
    #             writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
    #                              args.polarity, args.trigger_size, args.trigger_label,
    #                              train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
    #                              args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
    #                              train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend,
    #                              args.fine_tune, args.fine_tune_epochs, tune_clean[-1], tune_bd[-1],
    #                              args.prune, args.acc_drop, prune_clean, prune_bd, args.fine_prune, fine_prune_clean[-1], fine_prune_bd[-1]])
    #         if args.fine_tune and args.fine_prune==False:
    #             writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
    #                              args.polarity, args.trigger_size, args.trigger_label,
    #                              train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
    #                              args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
    #                              train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend,
    #                              args.fine_tune, args.fine_tune_epochs, tune_clean[-1], tune_bd[-1]])
    #         if args.fine_prune and args.fine_tune==False:
    #             writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
    #                              args.polarity, args.trigger_size, args.trigger_label,
    #                              train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
    #                              args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
    #                              train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend, args.prune, args.acc_drop, prune_clean, prune_bd,
    #                              args.fine_prune, fine_prune_clean[-1], fine_prune_bd[-1]])
            
    #     else:
    #         writer.writerow([args.dataset, args.epsilon, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
    #                          args.polarity, args.trigger_size, args.trigger_label,
    #                          train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
    #                          args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
    #                          train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1]])

    # Create a folder for the experiment, named after the experiment
    # path = path_name(args)
    # if not os.path.exists(path):
    #     os.makedirs(path)

    # # Save the info in a file
    # with open(f'{path}/args.txt', 'w') as f:
    #     f.write(str(args))

    # torch.save({
    #     'args': args,
    #     'list_train_loss': train_loss,
    #     'list_train_acc': train_acc,
    #     'list_test_loss': test_loss_clean,
    #     'list_test_acc': test_acc_clean,
    #     'list_test_loss_backdoor': test_loss_backdoor,
    #     'list_test_acc_backdoor': test_acc_backdoor,
    # }, f'{path}/data.pt')

    # torch.save(model, f'{path}/model.pth')

    # plot_accuracy_combined(path, train_acc,
    #                        test_acc_clean, test_acc_backdoor)
    # print('[!] Model and results saved successfully!')



def save_experiments_different(args, train_acc, train_loss, test_acc_clean, test_acc_backdoor, test_acc_backdoor_2):

    # Create a folder for the experiments, by default named 'experiments'
    if not os.path.exists(args.save_path):
            os.makedirs(args.save_path)

    # Create if not exists a csv file, appending the new info
    
    path = '{}/{}.csv'.format(args.save_path,args.save_name)
    # path_full = '{}/{}_full.csv'.format(args.save_path,args.save_name)
    header = ['dataset', 'seed', 'epsilon', 'pos',
              'polarity', 'trigger_size', 'trigger_size_2', 'trigger_label',
              'loss', 'optimizer', 'batch_size', 'type', 'epochs',
              'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length_small', 'trigger_length_big' ,
              'train_acc', 'test_acc_clean', 'test_acc_backdoor_small', 'test_acc_backdoor_big']

    if not os.path.exists(path):
        with open(path, 'w',777) as f:
            writer = csv.writer(f)
            writer.writerow(header)
    # if not os.path.exists(path_full):
    #     with open(path_full, 'w',777) as f:
    #         writer = csv.writer(f)
    #         writer.writerow(header)

    # Append the new info to the csv file
    with open(path, 'a',777) as f:
        writer = csv.writer(f)
        writer.writerow([args.dataset, args.seed, args.epsilon, args.pos,
                         args.polarity, args.trigger_size, args.trigger_size_2, args.trigger_label,
                         train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                         args.start, args.end, args.strobe_gap, args.strobe_on_duration, args.trigger_length, args.trigger_length_2,
                         f'{train_acc[-1]* 100:.2f}', f'{test_acc_clean[-1]* 100:.2f}', f'{test_acc_backdoor[-1]* 100:.2f}',f'{test_acc_backdoor_2 * 100:.2f}'])
        
    # with open(path_full, 'a',777) as f:
    #     writer = csv.writer(f)
    #     writer.writerow([args.dataset, args.seed, args.epsilon, args.pos,
    #                      args.polarity, args.trigger_size, args.trigger_size_2, args.trigger_label,
    #                      train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
    #                      args.start, args.end, args.strobe_gap, args.strobe_on_duration, args.trigger_length, args.trigger_length_2,
    #                      f'{train_acc[-1]}', f'{test_acc_clean[-1]}', f'{test_acc_backdoor[-1]}',f'{test_acc_backdoor_2}'])