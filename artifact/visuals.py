import torch
import torch.nn as nn
import torch.nn.functional as F
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
from torch.nn.utils import prune
import zlib
import copy
from spikingjelly.activation_based.monitor import GradOutputMonitor
import numpy as np

from models import get_model
# from pytorch_grad_cam import GradCAM


class GradCAM:
    def __init__(self, model, target_layer):
        def compress(x):
        # spike_b, s_dtype, s_shape, s_padding = tensor_cache.float_spike_to_bool(spike)
            spke_cpu = x.to('cpu')
            return spke_cpu
        # spike_cb = zlib.compress(spike.cpu().numpy().tobytes())
        # return spike_cb
        # create a copy of the model to avoid changing the original model
        self.model = model

        # self.model = copy.deepcopy(model).to(next(model.parameters()).device)
        
        # self.model = get_model('gesture', '16')
        # self.model.load_state_dict(copy.deepcopy(model.state_dict()))

        self.target_layer = target_layer
        self.spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)
        self.grad_input_monitor = monitor.GradOutputMonitor(model,layer.Conv2d)
        # self.grad_output_monitor =  monitor.GradInputMonitor(model,layer.Conv2d)
        self.target_layer
        # self.hook_layers()

    

    # def hook_layers(self):
    #     def forward_hook(module, input, output):
    #         self.activation = output

    #     self.target_layer.register_forward_hook(forward_hook)

    def generate_cam(self, input_image, class_idx=None,layer=0,maxed=True):
        self.model.train()
        # Forward pass
        output = self.model(input_image)
        # print('output',output.mean(0).argmax(1))
        output = output.transpose(0, 1)
        if class_idx is None:
            class_idx = torch.argmax(output)
        target = output[:, :,class_idx]
        # #print('final',output.mean(1))
        # #print('pre',output)

        # Check if the target tensor has a grad_fn
        ####print(output.requires_grad)
        if not target.requires_grad:
            raise RuntimeError("The target tensor does not have a grad_fn. Ensure requires_grad=True for input tensor.")

        # Backward pass
        self.model.zero_grad()
        # #print(torch.ones_like(target))
        
        target.backward(gradient=torch.ones_like(target),retain_graph=True)

        # Get gradients and activation
        gradients_in = self.grad_input_monitor[self.grad_input_monitor.monitored_layers[layer]][0].cpu().numpy()[:,0,:,:,:]
        # gradients_out = self.grad_output_monitor.records[-1].data.cpu().numpy()[0]
        # gradients_out = self.grad_output_monitor[self.grad_output_monitor.monitored_layers[layer]][0].cpu().numpy()[:,0,:,:,:]
        activation = self.spike_seq_monitor[self.spike_seq_monitor.monitored_layers[layer]][0].detach().cpu().numpy()[:,0,:,:,:]
        
        self.grad_input_monitor.records.clear()
        self.spike_seq_monitor.records.clear()
        self.model.zero_grad()

        # activation = self.activation.data.cpu().numpy()[0]

        # #print('activations shape',activation.shape)

        # Compute weights
        ###print('grad',gradients_in.shape)

        weights = np.mean(gradients_in, axis=(0,2, 3))
        # #print('max', np.max(weights))
        # #print('min', np.min(weights))

        # #print('w',weights.shape)
        # Compute Grad-CAM


        cam = [np.zeros(activation.shape[2:], dtype=np.float32)]*16

        maxi=[]

        # if maxed:
        #     for i, w in enumerate(weights):
        #         w = torch.from_numpy(w).unsqueeze(1).unsqueeze(2)
        #         if (i<16):

        #             cam[i]= torch.mul(w, torch.from_numpy(activation[i, :, :, :]))


        #             ###print(cam[i].shape)
        #             # ###print('pre',cam[i].shape)
        #             cam[i] = np.maximum(cam[i], 0)
        #             maxi.append(torch.max(cam[i]).item())
        #     maxim = max(maxi)
        #     ##print(maxim)
        #     for i,w in enumerate(weights):
        #         cam[i]/=maxim
        #         cam[i] = cam[i].mean(dim=0)
        #         # cam[i] = cam[i] - np.min(cam[i])
        #         # cam[i] = cam[i] / np.max(cam[i])
        #         # cam[i] = cam[i] - minim
        #         # cam[i] = cam[i] / maxim
        #         # Reshape cam to match input dimensions [16, 2, 128, 128]
                
        # else:
        #     for i, w in enumerate(weights):
        #         w = torch.from_numpy(w).unsqueeze(1).unsqueeze(2)
        #         if (i<16):

        #             cam[i]= torch.mul(w, torch.from_numpy(activation[i, :, :, :]))


        #             ###print(cam[i].shape)
        #             # ###print('pre',cam[i].shape)
        #             cam[i] = np.minimum(cam[i], 0)
        #             maxi.append(torch.min(cam[i]).item())
        #     maxim = min(maxi)
        #     ##print(maxim)
        #     for i,w in enumerate(weights):
        #         cam[i]/=maxim
        #         cam[i] = cam[i].mean(dim=0)
        #         # cam[i] = cam[i] - np.min(cam[i])
        #         # cam[i] = cam[i] / np.max(cam[i])
        #         # cam[i] = cam[i] - minim
        #         # cam[i] = cam[i] / maxim
        #         # Reshape cam to match input dimensions [16, 2, 128, 128]
        if maxed:
            for i, w in enumerate(weights):

                # w = torch.from_numpy(w).unsqueeze(0).unsqueeze(1).unsqueeze(2)
                if (i<16):
                    # #print the top left corner of the activation map on a square of 12x12
                    # if i == 0:
                    #     #print('patch',activation[i,:,:,:])
                    # #print('patch',activation.shape)
                    # cam[i]= torch.mul(w, torch.from_numpy(activation[i, :, :, :]))
                    cam[i]= torch.from_numpy( w*activation[i, :, :, :])
                    # #print(cam[i].shape)
                    # #print(cam[i].shape)
                    # #print((np.max(cam[i])),(np.min(cam[i])),(np.max(cam[i]) - np.min(cam[i])))

                    ###print(cam[i].shape)
                    ##print('pre',cam[i].shape)
                    cam[i] = np.abs(cam[i])
                    # cam[i] = np.maximum(cam[i], 0)
                    ##print('asdfasdfasdf',cam[i].shape)
                    ##print('22222222222222',cam[i].max())
                    # cam[i] = cam[i] / cam[i].max()
                    ##print('333333333333',cam[i].max())


                    cam[i] = cam[i].mean(dim=0)
                    # for i in range(16):
                    #     #print('cam',cam[i].shape)
                    #     #print('nonNumber',np.isnan(cam[i]).sum())


        else:
            for i, w in enumerate(weights):
                # w = torch.from_numpy(w).unsqueeze(1).unsqueeze(2)
                if (i<16):

                    cam[i]= torch.from_numpy( w*activation[i, :, :, :])


                    ###print(cam[i].shape)
                    # ###print('pre',cam[i].shape)
                    cam[i] = np.minimum(cam[i], 0)
                    maxi.append(torch.min(cam[i]).item())
            maxim = min(maxi)
            ##print(maxim)
            for i,w in enumerate(weights):
                cam[i]/=maxim
                cam[i] = cam[i].mean(dim=0)
                # cam[i] = cam[i] - np.min(cam[i])
                # cam[i] = cam[i] / np.max(cam[i])
                # cam[i] = cam[i] - minim
                # cam[i] = cam[i] / maxim
                # Reshape cam to match input dimensions [16, 2, 128, 128]

            # for i in range(16):
            #     #print('cam',cam[i].shape)
            #     #print('nonNumber',np.isnan(cam[i]).sum())

        #delete all the variables left in the gpu
        del gradients_in
        # del gradients_out
        del activation
        del weights
        del output
        del target
        del class_idx
        del input_image
        # self.model.zero_grad()
        self.grad_input_monitor.records.clear()
        self.spike_seq_monitor.records.clear()
        self.model.zero_grad()
        # self.model = None
        # self.target_layer = None
        # self.grad_input_monitor = None
        # self.spike_seq_monitor = None


        torch.cuda.empty_cache()


        return cam

