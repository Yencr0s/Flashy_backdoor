# How to run the code

## Requirements

Install SpikingJelly repo from [here](https://spikingjelly.readthedocs.io), or install it using pip (included in the requirements):

Install the requirements:
```bash
pip install -r requirements.txt
```

## Preparing the datasets

Some datasets are automatically downloaded. But some others have to be downloaded manually. This is a [restriction](https://spikingjelly.readthedocs.io/zh_CN/latest/activation_based_en/neuromorphic_datasets.html) from the SpikingJelly repo.

Create a `data/` folder in the root of the project:
```bash
mkdir data
```

### N-MNIST

N-MNIST **cannot** be downloaded automatically. You have to download it manually from [here](https://www.garrickorchard.com/datasets/n-mnist).
Then, create a folder with the name `mnist` in the `data` folder and put the downloaded files in it.
```bash	
mkdir data/mnist
```

And put the dataset (`.zip` file) in it.
SpikingJelly will automatically unzip the files (creating a `extracted/` folder), and do the rest of the work.

### CIFAR10-DVS

CIFAR10-DVS **can** be downloaded automatically. You just have to create a folder with the name `cifar10` in the `data` folder.
```bash
mkdir data/cifar10
```

### DVS128 Gesture

DVS128 Gesture **cannot** be downloaded automatically. You have to download it from [here](https://ibm.ent.box.com/s/3hiq58ww1pbbjrinh367ykfdf60xsfm8/folder/50167556794).
Then, create a folder with the name `gesture` in the `data` folder and put the downloaded files in it.

```bash
mkdir data/gesture
```

And put the dataset (`.gz` file) in it.


## Hardware requirements

In order to run the code a GPU is strongly recommended. 
The code is tested on a machine with 1/2 NVIDIA A100 GPU with 20GB.

## Reading the results

After execution, the results are saved in a `.csv` file in the `experiments/` folder.
The `.csv` file will contain all the execution parameters and the results of the attack.

## Examples

Script examples for different datasets and attacks are provided in the `scripts/` folder. 

Get help:
```bash
python main.py --help

usage: main.py [-h] [--dataset DATASET] [--lr LR] [--batch_size BATCH_SIZE] [--epochs EPOCHS] [--T T]
               [--amp] [--cupy] [--loss {mse,cross}] [--optim {adam,sgd}] [--trigger_label TRIGGER_LABEL]
               [--polarity {0,1,2,3}] [--trigger_size TRIGGER_SIZE] [--epsilon EPSILON]
               [--pos {top-left,top-right,bottom-left,bottom-right,middle,random}] [--type {static,flash}]
               [--momentum MOMENTUM] [--data_dir DATA_DIR] [--start] [--save_path SAVE_PATH]
               [--model_path MODEL_PATH] [--seed SEED] [--start] [--end] [--strobe_gap]
               [--strobe_on_duration] [--trigger_length] [--save_name] [--defend] [--prune_rate]
               [--fine_tune] [--fine_prune] [fine_tune_epochs]

optional arguments:
  -h, --help            show this help message and exit
  --dataset DATASET     Dataset to use
  --lr LR               Learning rate
  --batch_size BATCH_SIZE
                        Batch size
  --epochs EPOCHS       Number of epochs
  --T T                 simulating time-steps
  --amp                 Use automatic mixed precision training
  --cupy                Use cupy
  --loss {mse,cross}    Loss function
  --optim {adam,sgd}    Optimizer
  --trigger_label TRIGGER_LABEL
                        The index of the trigger label
  --polarity {0,1,2,3}  The polarity of the trigger
  --trigger_size TRIGGER_SIZE
                        The size of the trigger as the percentage of the image size
  --epsilon EPSILON     The percentage of poisoned data
  --pos {top-left,top-right,bottom-left,bottom-right,middle,random}
                        The position of the trigger
  --type {static,flash}
                        The type of the trigger
  --data_dir DATA_DIR   Data directory
  --save_path SAVE_PATH
                        Path to save the experiments
  --model_path MODEL_PATH
                        Use a pretrained model
  --seed SEED           Random seed
  --start START         Frame index to start the trigger
  --end END             Frame indes to stop the trigger
  --strobe_gap GAP      Gap between the consecutive trigger frames
  --strobe_on_duration DURATION
                        Duration of the trigger before a gap
  --trigger_length LENGTH
                        Duration of the trigger, if 0, then it applies to all the frames
  --save_name NAME      Name of the saved CSV
  --defend              Indicates that the defenses will apply
  --prune               Performing the pruning
  --prune_rate RATE     Percentage of the pruned neurons (0-1)
  --fine_tune           Performing fine-tuning with a clean dataset
  --fine_prune          Performing fine-tuning after the pruning
  --fine_tune_epochs EPOCHS
                        Number of epochs to fine-tune

```

## Framed Triggers

Example of running a framed trigger attack on N-MNIST dataset, in the top-left corner, with 10% of the data poisoned, polarity 3, with the trigger size of 20% of the image size, with a trigger length of 3 and starting in the 4th frame:

```bash	
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 43 --epochs 20 --start 4 --trigger_length 3
```

## Strobing Triggers

Example of running a strobing trigger attack on N-MNIST dataset, in the top-left corner, with 10% of the data poisoned, polarity 3, with the trigger size of 20% of the image size, with a trigger length of 3, a gap of 2 clean frames and 3 continuous triggered frame each time, starting in the 4th frame:

```bash	
python main.py --dataset mnist --polarity 3 --pos top-left --trigger_size 0.2 --epsilon 0.1 --type static --cupy --seed 43 --epochs 20 --start 4 --trigger_length 3 --strobe_gap 2 --strobe_on_duration 3 
```

## Flashy Triggers

Example of running a flashy trigger attack on N-MNIST dataset, in the top-left corner, with 10% of the data poisoned, polarity 3, with a trigger length of 3, a gap of 2 clean frames and 3 continuous triggered frame each time, starting in the 4th frame:

```bash	
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 43 --epochs 20 --start 4 --trigger_length 3 --strobe_gap 2 --strobe_on_duration 3 
```

## Defense

Example of running a flashy attack on N-MNIST dataset, in the top-left corner, with 10% of the data poisoned, polarity 3, with a trigger length of 3, a gap of 2 clean frames and 3 continuous triggered frame each time, starting in the 4th frame. Applying the fine-pruning defense with 80% pruning rate and 8 epochs of fine-tunning:

```bash	
python main.py --dataset mnist --polarity 3 --pos top-left --epsilon 0.1 --type flash --cupy --seed 43 --epochs 20 --start 4 --trigger_length 3 --strobe_gap 2 --strobe_on_duration 3 --defend --prune --acc_drop 0.8 --fine_tune --fine_prune --fine_tune_epochs 8
```

