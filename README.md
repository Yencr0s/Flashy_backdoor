# Flashy-backdoor

Code for the master's thesis Flashy Backdoor: Real-World Environment Backdoor Attack on SNNs with DVS cameras.

A guide to the code is available [here](how_to.md).

## Examples
### Static triggers

### Framed triggers

### Strobing triggers

### Flashy triggers

#### Physical environment

|       Clean           |      Flashlight Trigger         |       Laser Pointer Trigger          |
|------------------	|---	|---	|
| ![clean image](./figures/clean_real.gif) 	|  ![flashlight](./figures/flashlight.gif) | ![laser_pointer](./figures/laser.gif) 	|


## GradCam samples
### Clean model
|      Sample          |      Target class         |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |
|------------------	|--- |---	|---	|---	|---	|
|   Clean 	  |   Real 	      |  ![clean](./figures/flashlight.gif) | ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	|
|   Clean 	  |   Backdoor 	  |  ![clean](./figures/flashlight.gif) | ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	|
|   Poisoned 	|   Real 	      |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |
|   Poisoned 	|   Backdoor 	  |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |




### Backdoored model
|      Sample          |      Layer 1         |       Layer 2          |       Layer 3          |       Layer 4          |
|------------------	|---	|---	|---	|---	|
|   Clean 	  |  ![clean](./figures/flashlight.gif) | ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	| ![clean](./figures/laser.gif) 	|
|   Poisoned 	|  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |  ![poisoned](./figures/flashlight.gif) |


## Authors

Roberto Riaño, Gorka Abad, and Ekaitz Jauregi.



## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
