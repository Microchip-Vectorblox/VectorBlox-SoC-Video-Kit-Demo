# PolarFire&reg; SoC Video Kit VectorBlox Demo Generation Tcl Scripts - Libero&reg; SoC v2023.1+

## Table of Contents

- [PolarFire&reg; SoC Video Kit VectoBlox Demo Generation Tcl Scripts - Libero&reg; SoC v2023.1+](#polarfire-soc-video-kit-vectorblox-demo-generation-tcl-scripts---libero-soc-v20231)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Using the Vectorblox design generation Tcl script](#using-the-reference-design-generation-tcl-script)
    - [Licensing](#licensing)
    - [Standard design generation](#standard-design-generation)
    - [Arguments supported](#arguments-supported)
  - [Programming the FPGA](#programming-the-fpga)
  - [Board configuration](#board-configuration)
  - [Flashing Yocto Linux](#flashing-yocto-linux)
  - [Building the demo](#demo-building)
  - [Controlling the demo](#demo-controlling)

<a name="description"></a>
## Description

This repository can be used to generate a VectorBlox demo using the PolarFire SoC Video Kit. The demo can be used to accelerate VNNX neural networks on embedded Linux on PolarFire SoC, including a full HDMI pipeline. A Libero SoC Tcl script is provided to generate the design using Libero SoC along with device specific I/O constraints.

This repository supports Libero SoC v2023.1, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

<a name="licensing"></a>
### Licensing

The Video Kit VectorBlox Design can be generated using any of the free or paid Libero licenses. Licensing information is available on the Microchip website [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/licensing).

<a name="using-the-vectorblox-design-generation-tcl-script"></a>
## Using the VectorBlox design generation Tcl script

<a name="standard-design-generation"></a>
### Standard design generation

To generate the Vectorblox demo design, the following flow can be used:

1. Clone or download the repository
2. Open Libero v2023.1
3. Open the execute script dialog (CTRL + U)
4. Execute the "MPFS_VIDEO_KIT_REFERENCE_DESIGN.tcl" script
5. Configure the design if required
6. Run the Libero SoC design flow to program a device

<a name="arguments-supported"></a>
### Arguments supported

Below arguments are supported to modify or configure aspects of the design flow that will be run. Supported arguments are:

| Argument                  | Description                                                                                                                                |
| :------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------|
| HSS_UPDATE                | Downloads the HSS release hex file associated with this release of the reference design. <br>The hex file is added as an eNVM client in Libero. <br>This argument requires wget to be installed. <br>This is installed by default on most Linux systems, on Windows® wget (version 1.14 or above) <br>should be installed and added to the system path, steps are shown in the following [guide](https://www.addictivetips.com/windows-tips/install-and-use-wget-in-windows-10/) |
| SYNTHESIZE                | Runs the synthesis step after design generation has completed                                                         |
| PLACEROUTE                | Runs the synthesis and place and route steps after design generation has completed                                    |
| VERIFY_TIMING             | Runs the synthesis, place and route and timing verification steps after design generation has completed               |
| GENERATE_PROGRAMMING_DATA | Generates the files required to generate a bitstream for programming a device                                         |
| EXPORT_FPE                | Runs the full design flow after generating a design and exports a FlashPro Express file to the local directory                              |

<a name="programming-the-fpga"></a>
## Programming the FPGA

Once the script has completed the design can be configured further if needed and the Libero SoC design flow can be run by double clicking on a stage in the design flow on the left hand side of Libero. Selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run any required steps, such as, "Synthesize", "Place and Route", etc and then program the device.

<a name="board-configuration"></a>
## Board configuration

Setting up the jumpers on the PolarFire SoC Video Kit, refer to the [Video Kit user's guide](https://mi-v-ecosystem.github.io/redirects/boards-mpfs-sev-kit-sev-kit-user-guide).
The latest Linux images for the PolarFire SoC Video Kit are available from the releases section of the [Meta PolarFire SoC Yocto BSP](https://mi-v-ecosystem.github.io/redirects/releases-meta-polarfire-soc-yocto-bsp) repository.

*In addition, connect an ethernet cable to either ethernet port (an internet connection is required to download the SDK and sample networks) and plug in an HDMI input into J13, and an HDMI output into J14*

<a name="flashing-yocto-linux"></a>
## Flashing Yocto Linux

Program the [2023.02.1 Yocto image](https://github.com/polarfire-soc/meta-polarfire-soc-yocto-bsp/releases/download/v2023.02.1/core-image-minimal-dev-mpfs-video-kit-20230328105837.rootfs.wic.gz) *EXTRACTED*, then power cycle and ensure Yocto Linux boots (on MMUART1).

> On Windows, the Yocto [image can be programmed](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/reference-designs-fpga-and-development-kits/updating-mpfs-kit.md#programming-a-linux-image) via `USBImager`.  
> For detailed documentation please refer to [PolarFire SoC Documentation](https://github.com/polarfire-soc/polarfire-soc-documentation)

<a name="demo-building"></a>
## Building the demo

- Login as `root` (on MMUART1 or via ssh over ethernet)
- Download and unzip the [VectorBlox SDK 1.4.4 sample networks](https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/Releases/ModelZoo/samples_V1000_1.4.4.zip)    

```
wget --no-check-certificate \
     https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/Releases/ModelZoo/samples_V1000_1.4.4.zip

unzip samples_V1000_1.4.4.zip
```

- Download and unzip the [VectorBlox SDK](https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/EAP/sdk_1.4.4.zip)    

```
wget --no-check-certificate https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/EAP/sdk_1.4.4.zip
unzip sdk_1.4.4.zip
cd sdk/example/soc-video-c
```
- Run `make hdmi` to test the HDMI feed is working (runs 60 frames). Unplug and plug HDMI input if not working 
- Run `make overlay` to add the Vectorblox instance to the device tree (required every boot)
- Run `make` to build the demo application
- Run `./run-video-model` to launch the demo.


<a name="demo-controlling"></a>
## Controlling the demo

- Use the `ENTER` key to switch modes. Entering `q` (pressing `q` then `ENTER`) quits.
- In `Face Recognition` mode, you can enter `a` to add or `d` to delete face embeddings.
    - Entering `a` highlights the largest face on-screen in `RED`, entering `a` again adds that face to the embeddings. You will then be prompted to enter a name (or just press `ENTER` to use a default ID).
    - Entering `d` will list the indices and names of the embeddings. Enter the desired index to delete the specified embedding from the database (or press `ENTER` to skip deletion).


Samples videos for input to the Faces Recognition and License Plate Recognition modes are available [here](https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/Releases/SampleFaces.mp4) and [here](https://vector-blox-model-zoo.s3.us-west-2.amazonaws.com/Releases/SamplePlates.mp4).


Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.
