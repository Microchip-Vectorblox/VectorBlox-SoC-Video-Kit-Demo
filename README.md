
![](media/demo.gif)

# PolarFire&reg; SoC Video Kit VectorBlox Demo

This repository can be used to generate a VectorBlox demo using the [PolarFire&reg; SoC Video Kit](https://www.microchip.com/en-us/development-tool/MPFS250-VIDEO-KIT). A Libero SoC Tcl script is provided to generate the design using Libero SoC along with device-specific I/O constraints.

This repository supports Libero SoC v2025.2, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).


## Table of Contents

- QuickStart Setup Guide
- Building with Libero Setup Guide
- Controlling the VectorBlox Demo
- Additional Information
- Version Compatibility
- Legal

## QuickStart Setup Guide

The Quickstart Setup Guide is recommended for most users. Use the Building with Libero Setup Guide only if you need to make custom modifications to the Libero project.

To run the demo on the PolarFire SoC Video Kit without building, using the pre-built job files provide, **please refer to the [Quickstart Setup Guide](docs/Quickstart.md).**

## Building with Libero Setup Guide

For instructions on building the project with a Tcl script in Libero SoC v2025.1 or generating a custom job file, refer to the [Building with Libero Setup Guide](docs/building_with_libero.md).

## Controlling the VectorBlox Demo

A list of models that the demo runs can be found in the [demo_models.h](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/blob/master/example/soc-video-c/demo_models.h) file. The demo models header file is located in the `examples/soc-video-c` directory of the VectorBlox SDK and is transferred to the board when running the quickstart shell script.

Refer to [adding_models.md](docs/adding_models.md) for instructions on adding models generated from the SDK.

To interact with the demo:

- Use the `ENTER` key to switch models. Entering `q` (pressing `q` and `ENTER`) quits the demo.
- In the `Recognition` mode, you can enter `a` to add or `d` to delete face embeddings.
  - Entering `a` initially highlights the largest face on-screen, and entering `a` again adds that face to the embeddings. You will then be prompted to enter a name (or just press `ENTER` to use the default ID).

  - Entering `d` will list the indices and names of the embeddings. Enter the desired index to delete the specified embedding from the database (or press `ENTER` to skip the deletion).

- Entering `b` on any models that use Pose Estimation for postprocessing will allow the user to toggle between blackout options for the image output.

Sample videos for input to the Face Recognition mode are available [here](https://github.com/Microchip-Vectorblox/assets/releases/download/assets/SampleFaces.mp4).

## Additional Information

- [Flashing Yocto Linux](docs/flashing_yocto_linux.md) -  Refer to this document when flashing an OS to the board.
- [Board Setup Without quickstart shell script](docs/manual_setup.md) - It’s recommended to use the quickstart script to set up the board; for manual setup, please refer to this document.
- [Adding Additional Models](docs/adding_models.md) - Describes how to add additional models to the demo that can be generated through our SDK.
- [Resource Utilization](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/blob/master/docs/resource_utilization.md) - Refer to this for FPGA resource utilization numbers for the VBX v3.1 core.
- [CoreVectorBlox IP Handbook ](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/blob/master/docs/CoreVectorBlox_IP_Handbook.pdf) - Please refer to the CoreVectorBlox IP Handbook PDF within the docs folder of our SDK for more information about the VectorBlox core.
- [VectorBlox SoC Video Kit Demo Guide PDF](docs/VectorBlox_PolarFire_SoC_Video_Kit_Demo_Guide.pdf) - Refer to this PDF for more information.

## Version Compatibility

Refer to the following table for previous version compatibility information for the VBX SoC Video Kit Demo:

| VBX SoC Video Demo Release Tags                                                                                                     | VBX SDK Release Tags                                                                                 | .job File                                                                                                                                                               | Libero Version     | FlashPro Version  |
| :---------------------------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------- | :---------------- |
| [demo-release-v3.0](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/tree/release-v3.0?tab=readme-ov-file)     | [sdk-release-v3.0](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/release-v3.0)         | [v3.0_JOB_FILE](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v3.0/Vectorblox-Video-Kit-Demo.job.v3.0.zip)     | Libero SoC v2025.1 | FPExpress v2025.1 |
| [demo-release-v2.0.3](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/tree/release-v2.0.3?tab=readme-ov-file) | [sdk-release-v2.0.3](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/release-v2.0.3)     | [v2.0.3_JOB_FILE](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0.3/Vectorblox-SoC-Video-Kit-Demo.job.v2.0.3.zip) | Libero SoC v2024.2 | FPExpress v2024.2 |
| [demo-release-v2.0.2](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/tree/release-v2.0.2?tab=readme-ov-file) | [sdk-release-v2.0.2](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/release-v2.0.2)     | [v2.0.2_JOB_FILE](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0.2/Vectorblox-SoC-Video-Kit-Demo.job.v2.0.2.zip) | Libero SoC v2024.2 | FPExpress v2024.2 |
| [demo-release-v2.0.1](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/tree/release-v2.0.1?tab=readme-ov-file) | [sdk-release-v2.0.1](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/release-v2.0.1)     | [v2.0.1_JOB_FILE](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0.1/Vectorblox-SoC-Video-Kit-Demo.job.v2.0.1.zip) | Libero SoC v2024.2 | FPExpress v2024.2 |
| [demo-release-v2.0](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/tree/release-v2.0?tab=readme-ov-file)     | [sdk-release-v2.0](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/release-v2.0)         | [v2.0_JOB_FILE](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0/Vectorblox-SoC-Video-Kit-Demo.job.v2.0.zip)       | Libero SoC v2024.2 | FPExpress v2024.2 |

## Legal

Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.

Copyright (c) 2023-2026 Microchip Technology Inc. All rights reserved.

For detalied license information, see [LICENSE.md](LICENSE.md).
