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
import torch.nn.functional as F
from torch.nn.utils import prune
import zlib
import copy
from spikingjelly.activation_based.monitor import GradOutputMonitor
import numpy as np


from pytorch_grad_cam import GradCAM


class GradCAM:
    def __init__(self, model, target_layer):
        def compress(x):
        # spike_b, s_dtype, s_shape, s_padding = tensor_cache.float_spike_to_bool(spike)
            spke_cpu = x.to('cpu')
            return spke_cpu
        # spike_cb = zlib.compress(spike.cpu().numpy().tobytes())
        # return spike_cb
        self.model = model
        self.target_layer = target_layer
        self.spike_seq_monitor = monitor.OutputMonitor(model,layer.Conv2d, function_on_output=compress)
        self.grad_input_monitor = monitor.GradOutputMonitor(model,layer.Conv2d)
        self.grad_output_monitor =  monitor.GradInputMonitor(model,layer.Conv2d)
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
        output = output.transpose(0, 1)
        if class_idx is None:
            class_idx = torch.argmax(output)
        target = output[:, :,class_idx]
        print('final',output.mean(1))
        print('pre',output)

        # Check if the target tensor has a grad_fn
        ###print(output.requires_grad)
        if not target.requires_grad:
            raise RuntimeError("The target tensor does not have a grad_fn. Ensure requires_grad=True for input tensor.")

        # Backward pass
        self.model.zero_grad()
        # print(torch.ones_like(target))
        target.backward(gradient=torch.ones_like(target),retain_graph=True)

        # Get gradients and activation
        gradients_in = self.grad_input_monitor[self.grad_input_monitor.monitored_layers[layer]][0].cpu().numpy()[:,0,:,:,:]
        # gradients_out = self.grad_output_monitor.records[-1].data.cpu().numpy()[0]
        gradients_out = self.grad_output_monitor[self.grad_output_monitor.monitored_layers[layer]][0].cpu().numpy()[:,0,:,:,:]
        activation = self.spike_seq_monitor[self.spike_seq_monitor.monitored_layers[layer]][0].detach().cpu().numpy()[:,0,:,:,:]
        # activation = self.activation.data.cpu().numpy()[0]

        # ###print(gradients_out.shape)

        # Compute weights
        ##print('grad',gradients_in.shape)

        weights = np.mean(gradients_in, axis=(0,2, 3))

        print('w',weights.shape)
        # Compute Grad-CAM


        cam = [np.zeros(activation.shape[2:], dtype=np.float32)]*16

        maxi=[]

        # if maxed:
        #     for i, w in enumerate(weights):
        #         w = torch.from_numpy(w).unsqueeze(1).unsqueeze(2)
        #         if (i<16):

        #             cam[i]= torch.mul(w, torch.from_numpy(activation[i, :, :, :]))


        #             ##print(cam[i].shape)
        #             # ##print('pre',cam[i].shape)
        #             cam[i] = np.maximum(cam[i], 0)
        #             maxi.append(torch.max(cam[i]).item())
        #     maxim = max(maxi)
        #     #print(maxim)
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


        #             ##print(cam[i].shape)
        #             # ##print('pre',cam[i].shape)
        #             cam[i] = np.minimum(cam[i], 0)
        #             maxi.append(torch.min(cam[i]).item())
        #     maxim = min(maxi)
        #     #print(maxim)
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

                    # cam[i]= torch.mul(w, torch.from_numpy(activation[i, :, :, :]))
                    cam[i]= torch.from_numpy( w*activation[i, :, :, :])
                    print(cam[i].shape)
                    # print(cam[i].shape)
                    # print((np.max(cam[i])),(np.min(cam[i])),(np.max(cam[i]) - np.min(cam[i])))

                    ##print(cam[i].shape)
                    #print('pre',cam[i].shape)
                    cam[i] = np.maximum(cam[i], 0)
                    #print('asdfasdfasdf',cam[i].shape)
                    #print('22222222222222',cam[i].max())
                    # cam[i] = cam[i] / cam[i].max()
                    #print('333333333333',cam[i].max())


                    cam[i] = cam[i].mean(dim=0)


        else:
            for i, w in enumerate(weights):
                # w = torch.from_numpy(w).unsqueeze(1).unsqueeze(2)
                if (i<16):

                    cam[i]= torch.from_numpy( w*activation[i, :, :, :])



                    ##print(cam[i].shape)
                    # ##print('pre',cam[i].shape)
                    cam[i] = np.absolute(np.minimum(cam[i], 0))
                    cam[i] = cam[i].mean(dim=0)

        return cam

