
![](media/demo.gif)

# PolarFire&reg; SoC Video Kit VectorBlox Demo
This repository can be used to generate a VectorBlox demo using the PolarFire SoC Video Kit. A Libero SoC Tcl script is provided to generate the design using Libero SoC along with device specific I/O constraints.

This repository supports Libero SoC v2025.1, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

## Table of Contents
- QuickStart Setup Guide
- Building with Libero Setup Guide
- Running the VectorBlox Demo
- Additional Information
- Legal



## QuickStart Setup Guide

To start running the demo on the PolarFire SoC Video Kit (without building) using the job file we provide, please use this [Quickstart Setup Guide](docs/Quickstart.md)

## Building with Libero Setup Guide

For a guide on the programming the PolarFire SoC with Libero SoC v2025.1, please refer to this [Building with Libero Setup Guide](docs/building_with_libero.md)


## Controlling the VectorBlox Demo
To interact with the VectorBlox Video demo the following can be done:
    
- Use the `ENTER` key to switch models. Entering `q` (pressing `q` and `ENTER`) quits the demo.
- In the `Recognition` mode, you can enter `a` to add or `d` to delete face embeddings.
    - Entering `a` initially highlights the largest face on-screen, and entering `a` again adds that face to the embeddings. You will then be prompted to enter a name( or just press `ENTER` to use the default ID)

    - Entering `d` will list the indices and names of the embeddings. Enter the desired index to delete the specified embedding from the database (or press `ENTER` to skip the deletion)

- Entering `b` on any models that use Pose Estimation for postprocessing will allow the user to toggle between blackout options for the img output.


Sample videos for input to the Face Recognition mode are available [here](https://github.com/Microchip-Vectorblox/assets/releases/download/assets/SampleFaces.mp4).



## Additional Information

- [Flashing Yocto Linux](docs/flashing_yocto_linux.md) - Refer to this document when flashing a OS to the board  
- [Board Setup Without quickstart.sh](docs/manual_setup.md) - It's recommended to set board up with the quickstart script, but for manual setup please refer to this document  
- [Adding Additional Models](docs/adding_models.md) - Describes how to add additional models to the demo that can be generated through our SDK
- [VectorBlox SoC Video Kit Demo Guide PDF](docs/VectorBlox_SoC_Video_Kit_Demo_Guide.pdf) - Refer to this pdf for extra information  


## Legal
Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.
