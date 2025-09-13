# Flashy-backdoor

Code for the paper Flashy Backdoor: Real-World Environment Backdoor Attack on SNNs with DVS cameras.

A guide to the code is available [here](how_to.md).

## Outline of the repository

├── flashy_backdoor
│   ├── LICENSE
│   ├── README.md
│   ├── artifact
│   │   ├── data
│   │   ├── BadExpert.py
│   │   ├── autoencoderTrain.py
│   │   ├── autoencoderUse.py
│   │   ├── datasets.py
│   │   ├── do_grad.py
│   │   ├── dynamic.py
│   │   ├── explorer.ipynb
│   │   ├── feebrus.py
│   │   ├── gradCamPatch.py
│   │   ├── gradcam.py
│   │   ├── main.py
│   │   ├── model.pthbase.pth
│   │   ├── models.py
│   │   ├── newFinalAutoencoderPatchSuperBig2L1.pth
│   │   ├── npzToFrames.py
│   │   ├── poisoned_dataset.py
│   │   ├── poisoned_dataset_februus.py
│   │   ├── singleSample.py
│   │   ├── strip.py
│   │   ├── utils.py
│   │   └── visuals.py
│   ├── claims
│   │   ├── claim1_flashy_dvs128
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   ├── claim2_attack_compare
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   ├── claim3_physical_transfer
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   ├── claim4_defense_finepruning
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   ├── claim5_strip_entropy
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   ├── claim6_Badexpert
│   │   │   ├── expected
│   │   │   ├── claim.txt
│   │   │   └── run.sh
│   │   └── claim7_februus
│   │       ├── expected
│   │       ├── claim.txt
│   │       └── run.sh
│   ├── how_to.md
│   ├── infrastructure
│   │   ├── README.md
│   │   ├── access
│   │   │   └── ssh.txt
│   │   └── access.txt
│   ├── install.sh
│   ├── requirements.txt
│   └── use.txt
├── requirements.txt
└── user_reviewer.txt


## Examples
### Static triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|

|![static](./artifact/figures/static_0.gif) | ![static](./artifact/figures/static_1.gif) 	| ![static](./artifact/figures/static_2.gif) 	| ![static](./artifact/figures/static_full.gif) 	|

### Framed triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|

|![static](./artifact/figures/framed_0.gif) | ![static](./artifact/figures/framed_1.gif) 	| ![static](./artifact/figures/framed_2.gif) 	| ![static](./artifact/figures/framed.gif) 	|

### Strobing triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|

|![static](./artifact/figures/strobe_0.gif) | ![static](./artifact/figures/strobe_1.gif) 	| ![static](./artifact/figures/strobe_2.gif) 	| ![static](./artifact/figures/strobing.gif) 	|
### Flashy triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|

|![static](./artifact/figures/flash_0.gif) | ![static](./artifact/figures/flash_1.gif) 	| ![static](./artifact/figures/flash_2.gif) 	| ![static](./artifact/figures/flash.gif) 	|
#### Physical environment

|       Clean           |      Flashlight Trigger         |       Laser Pointer Trigger          |
|------------------	|---	|---	|

| ![clean image](./artifact/figures/clean_real.gif) 	|  ![flashlight](./artifact/figures/flashlight.gif) | ![laser_pointer](./artifact/figures/laser.gif) 	|


## GradCam samples
### Clean model
|      Sample          |      Target class         |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |
|------------------	|--- |---	|---	|---	|---	|

|   Clean 	  |   Real 	      |  ![clean](./artifact/figures/GradCam/no_clean_c0_l1.gif) | ![clean](./artifact/figures/GradCam/no_clean_c0_l2.gif) 	| ![clean](./artifact/figures/GradCam/no_clean_c0_l3.gif) 	| ![clean](./artifact/figures/GradCam/no_clean_c0_l4.gif) 	|

|   Clean 	  |   Backdoor 	  |  ![clean](./artifact/figures/GradCam/no_clean_c7_l1.gif) | ![clean](./artifact/figures/GradCam/no_clean_c7_l2.gif) 	| ![clean](./artifact/figures/GradCam/no_clean_c7_l3.gif) 	| ![clean](./artifact/figures/GradCam/no_clean_c7_l4.gif) 	|

|   Poisoned 	|   Real 	      |  ![clean](./artifact/figures/GradCam/start_clean_c0_l1.gif) | ![clean](./artifact/figures/GradCam/start_clean_c0_l2.gif) 	| ![clean](./artifact/figures/GradCam/start_clean_c0_l3.gif) 	| ![clean](./artifact/figures/GradCam/start_clean_c0_l4.gif) 	|

|   Poisoned 	|   Backdoor 	  |  ![clean](./artifact/figures/GradCam/start_clean_c7_l1.gif) | ![clean](./artifact/figures/GradCam/start_clean_c7_l2.gif) 	| ![clean](./artifact/figures/GradCam/start_clean_c7_l3.gif) 	| ![clean](./artifact/figures/GradCam/start_clean_c7_l4.gif) 	|




### Backdoored model
|      Sample          |      Target class         |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |

|------------------	|--- |---	|---	|---	|---	|

|   Clean 	  |   Real 	      |  ![clean](./artifact/figures/GradCam/no_trigger_c0_l1.gif) | ![clean](./artifact/figures/GradCam/no_trigger_c0_l2.gif) 	| ![clean](./artifact/figures/GradCam/no_trigger_c0_l3.gif) 	| ![clean](./artifact/figures/GradCam/no_trigger_c0_l4.gif) 	|

|   Clean 	  |   Backdoor 	  |  ![clean](./artifact/figures/GradCam/no_trigger_c7_l1.gif) | ![clean](./artifact/figures/GradCam/no_trigger_c7_l2.gif) 	| ![clean](./artifact/figures/GradCam/no_trigger_c7_l3.gif) 	| ![clean](./artifact/figures/GradCam/no_trigger_c7_l4.gif) 	|

|   Poisoned 	|   Real 	      |  ![clean](./artifact/figures/GradCam/start_trigger_c0_l1.gif) | ![clean](./artifact/figures/GradCam/start_trigger_c0_l2.gif) 	| ![clean](./artifact/figures/GradCam/start_trigger_c0_l3.gif) 	| ![clean](./artifact/figures/GradCam/start_trigger_c0_l4.gif) 	|

|   Poisoned 	|   Backdoor 	  |  ![clean](./artifact/figures/GradCam/start_trigger_c7_l1.gif) | ![clean](./artifact/figures/GradCam/start_trigger_c7_l2.gif) 	| ![clean](./artifact/figures/GradCam/start_trigger_c7_l3.gif) 	| ![clean](./artifact/figures/GradCam/start_trigger_c7_l4.gif) 	|



## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
