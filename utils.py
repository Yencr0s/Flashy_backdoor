import torch.nn as nn
from torch import optim
import torch
from tqdm import tqdm
import matplotlib.pyplot as plt
import os
import seaborn as sns
import csv
from spikingjelly.activation_based import monitor, neuron, functional, layer, tensor_cache
from torch.cuda import amp
import torch.nn.functional as F
from torch.nn.utils import prune
import zlib
import copy

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
            with amp.autocast():
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
            with amp.autocast():
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

def evaluate(model, test_loader, criterion, device):
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



def prune_model(model, criterion, clean_testloader, poison_testloader, device, prune_rate):

    model.eval()

    test_loss_backdoor, test_acc_backdoor = evaluate(
        model, poison_testloader, criterion, device)

    # Register the hook to the last convolutional layer
    last_conv_layer = None
    for name, module in model.named_modules():
        if isinstance(module, layer.Conv2d):
            last_conv_layer = module

    spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)

    _, test_acc = evaluate(model, clean_testloader, criterion, device)        

    # print(spike_seq_monitor.monitored_layers)
    # for i in (spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]):
    #     print(i.shape)
    average_activation = torch.mean(torch.cat(spike_seq_monitor[spike_seq_monitor.monitored_layers[-1]][:-2]), dim=(0, 1, 3, 4)) #obtain the average activation per channel

    spike_seq_monitor.remove_hooks()
    spike_seq_monitor.clear_recorded_data()
   

    seq_sort = torch.argsort(average_activation, descending=False)
    
    # print(len(seq_sort), seq_sort.size())

    channels_to_prune = int(float(prune_rate)*len(seq_sort))
    # print('channels_to_prune',channels_to_prune, seq_sort[:channels_to_prune])
    # print(model.state_dict()[])
    # print(torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    last_conv_layer.weight.data[seq_sort[:channels_to_prune],:,:,:] = 0. #esto es in place
    # print(torch.count_nonzero(model.state_dict()['conv_fc.16.weight'].data))
    # print(last_conv_layer.weight.data)

    del spike_seq_monitor
    # functional.reset_net(model)

    
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


def fine_tune(model, criterion, optimizer, fine_tune_epochs, clean_trainloader, clean_testloader, poison_testloader, device, scaler=None, scheduler=None):
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

    return list_train_loss, list_train_acc, list_test_loss, list_test_acc, list_test_loss_backdoor, list_test_acc_backdoor


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
        path_full = '{}/{}_full.csv'.format(args.save_path,args.save_name+'_defend')
        header = ['dataset', 'least', 'most_polarity', 'seed', 'epsilon', 'pos',
              'polarity', 'trigger_size', 'trigger_label',
              'loss', 'optimizer', 'batch_size', 'type', 'epochs',
              'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
              'train_acc', 'test_acc_clean', 'test_acc_backdoor', 'defend', 'prune', 'prune_rate', 'pruned_clean', 'pruned_bd', 
              'fine_tune', 'fine_tune_epochs', 'fine_tune_clean','fine_tune_bd','fine_prune', 'fine_prune_clean', 'fine_prune_bd']

    else:
        path = '{}/{}.csv'.format(args.save_path,args.save_name)
        path_full = '{}/{}_full.csv'.format(args.save_path,args.save_name)
        header = ['dataset', 'least', 'most_polarity', 'seed', 'epsilon', 'pos',
                  'polarity', 'trigger_size', 'trigger_label',
                  'loss', 'optimizer', 'batch_size', 'type', 'epochs',
                  'start', 'end', 'strobe_gap','strobe_on_duration','trigger_length','random',
                  'train_acc', 'test_acc_clean', 'test_acc_backdoor']

    if not os.path.exists(path):
        with open(path, 'w',777) as f:
            writer = csv.writer(f)
            writer.writerow(header)

    # Append the new info to the csv file
    with open(path, 'a',777) as f:
        writer = csv.writer(f)
        if args.defend:
            writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                             args.polarity, args.trigger_size, args.trigger_label,
                             train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                             args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                             train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend, args.prune, args.acc_drop, prune_clean, prune_bd,
                             args.fine_tune, args.fine_tune_epochs, tune_clean[-1], tune_bd[-1], args.fine_prune, fine_prune_clean[-1], fine_prune_bd[-1]])
        else:
            writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                             args.polarity, args.trigger_size, args.trigger_label,
                             train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                             args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                             train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1]])
    
    with open(path_full, 'a',777) as f:
        writer = csv.writer(f)
        if args.defend:
            writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                             args.polarity, args.trigger_size, args.trigger_label,
                             train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                             args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                             train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1], args.defend, args.prune, args.acc_drop, prune_clean, prune_bd,
                             args.fine_tune, args.fine_tune_epochs, tune_clean[-1], tune_bd[-1], args.fine_prune, fine_prune_clean[-1], fine_prune_bd[-1]])
        else:
            writer.writerow([args.dataset, args.least, args.most_polarity, args.seed, args.epsilon, args.pos,
                             args.polarity, args.trigger_size, args.trigger_label,
                             train_loss[-1], args.optim, args.batch_size, args.type, args.epochs,
                             args.start, args.end, args.strobe_gap,args.strobe_on_duration,args.trigger_length,args.random,
                             train_acc[-1], test_acc_clean[-1], test_acc_backdoor[-1]])

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
