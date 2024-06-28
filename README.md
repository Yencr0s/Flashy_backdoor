# Flashy-backdoor

Code for the master's thesis Flashy Backdoor: Real-World Environment Backdoor Attack on SNNs with DVS cameras.

A guide to the code is available [here](how_to.md).

## Examples
### Static triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|
|![static](./figures/static_0.gif) | ![static](./figures/static_1.gif) 	| ![static](./figures/static_2.gif) 	| ![static](./figures/static_full.gif) 	|



### Framed triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|
|![static](./figures/framed_0.gif) | ![static](./figures/framed_1.gif) 	| ![static](./figures/framed_2.gif) 	| ![static](./figures/framed.gif) 	|

### Strobing triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|
|![static](./figures/strobe_0.gif) | ![static](./figures/strobe_1.gif) 	| ![static](./figures/strobe_2.gif) 	| ![static](./figures/strobing.gif) 	|
### Flashy triggers
|      Polarity 0        |      Polarity 1          |      Polarity 2          |      Polarity 3          |
|---	|---	|---	|---	|
|![static](./figures/flash_0.gif) | ![static](./figures/flash_1.gif) 	| ![static](./figures/flash_2.gif) 	| ![static](./figures/flash.gif) 	|
#### Physical environment

|       Clean           |      Flashlight Trigger         |       Laser Pointer Trigger          |
|------------------	|---	|---	|
| ![clean image](./figures/clean_real.gif) 	|  ![flashlight](./figures/flashlight.gif) | ![laser_pointer](./figures/laser.gif) 	|


## GradCam samples
### Clean model
|      Sample          |      Target class         |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |
|------------------	|--- |---	|---	|---	|---	|
|   Clean 	  |   Real 	      |  ![clean](./figures/GradCam/no_clean_c0_l1.gif) | ![clean](./figures/GradCam/no_clean_c0_l2.gif) 	| ![clean](./figures/GradCam/no_clean_c0_l3.gif) 	| ![clean](./figures/GradCam/no_clean_c0_l4.gif) 	|
|   Clean 	  |   Backdoor 	  |  ![clean](./figures/GradCam/no_clean_c7_l1.gif) | ![clean](./figures/GradCam/no_clean_c7_l2.gif) 	| ![clean](./figures/GradCam/no_clean_c7_l3.gif) 	| ![clean](./figures/GradCam/no_clean_c7_l4.gif) 	|
|   Poisoned 	|   Real 	      |  ![clean](./figures/GradCam/start_clean_c0_l1.gif) | ![clean](./figures/GradCam/start_clean_c0_l2.gif) 	| ![clean](./figures/GradCam/start_clean_c0_l3.gif) 	| ![clean](./figures/GradCam/start_clean_c0_l4.gif) 	|
|   Poisoned 	|   Backdoor 	  |  ![clean](./figures/GradCam/start_clean_c7_l1.gif) | ![clean](./figures/GradCam/start_clean_c7_l2.gif) 	| ![clean](./figures/GradCam/start_clean_c7_l3.gif) 	| ![clean](./figures/GradCam/start_clean_c7_l4.gif) 	|




### Backdoored model
|      Sample          |      Target class         |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |
|------------------	|--- |---	|---	|---	|---	|
|   Clean 	  |   Real 	      |  ![clean](./figures/GradCam/no_trigger_c0_l1.gif) | ![clean](./figures/GradCam/no_trigger_c0_l2.gif) 	| ![clean](./figures/GradCam/no_trigger_c0_l3.gif) 	| ![clean](./figures/GradCam/no_trigger_c0_l4.gif) 	|
|   Clean 	  |   Backdoor 	  |  ![clean](./figures/GradCam/no_trigger_c7_l1.gif) | ![clean](./figures/GradCam/no_trigger_c7_l2.gif) 	| ![clean](./figures/GradCam/no_trigger_c7_l3.gif) 	| ![clean](./figures/GradCam/no_trigger_c7_l4.gif) 	|
|   Poisoned 	|   Real 	      |  ![clean](./figures/GradCam/start_trigger_c0_l1.gif) | ![clean](./figures/GradCam/start_trigger_c0_l2.gif) 	| ![clean](./figures/GradCam/start_trigger_c0_l3.gif) 	| ![clean](./figures/GradCam/start_trigger_c0_l4.gif) 	|
|   Poisoned 	|   Backdoor 	  |  ![clean](./figures/GradCam/start_trigger_c7_l1.gif) | ![clean](./figures/GradCam/start_trigger_c7_l2.gif) 	| ![clean](./figures/GradCam/start_trigger_c7_l3.gif) 	| ![clean](./figures/GradCam/start_trigger_c7_l4.gif) 	|


## Authors

Roberto Riaño, Gorka Abad, and Ekaitz Jauregi.



## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
