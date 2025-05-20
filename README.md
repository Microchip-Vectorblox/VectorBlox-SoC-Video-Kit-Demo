![](media/demo.gif)

# PolarFire&reg; SoC Video Kit VectorBlox Demo Generation Scripts

## Table of Contents

- [PolarFire&reg; SoC Video Kit VectoBlox Demo Generation Scripts](#polarfire-soc-video-kit-vectorblox-demo-generation-scripts)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Using the Vectorblox design generation Tcl script](#using-the-reference-design-generation-tcl-script)
    - [Licensing](#licensing)
    - [Standard design generation](#standard-design-generation)
    - [Arguments supported](#arguments-supported)
  - [Programming the FPGA](#programming-the-fpga)
  - [Board configuration](#board-configuration)
  - [Flashing Yocto Linux](#flashing-yocto-linux)
  - [Building the demo](#building-the-demo)
  - [Controlling the demo](#Controlling-the-VectorBlox-demo)

<a name="Quickstart"></a>
## QuickStart

To start running the demo on the PolarFire SoC Video Kit (without building), please use the quickstart guide [here](docs/Quickstart.md)

<a name="description"></a>
## Description

This repository can be used to generate a VectorBlox demo using the PolarFire SoC Video Kit. A Libero SoC Tcl script is provided to generate the design using Libero SoC along with device specific I/O constraints.

This repository supports Libero SoC v2024.2, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

<a name="licensing"></a>
### Licensing

If building the Video Kit VectorBlox Design in Libero, two free licences -- `Libero SoC Silver License` and `Libero Soc VectorBlox License` are required. Licensing information is available on the Microchip website [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/licensing).

<a name="using-the-vectorblox-design-generation-tcl-script"></a>
## Using the VectorBlox design generation Tcl script

<a name="standard-design-generation"></a>
### Standard design generation

To generate the Vectorblox demo design, the following flow can be used:

1. Clone or download the repository
2. Open Libero v2024.2
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

Alternatively, the provided `.job` files can be used to program the board via FlashPro Express 

<a name="board-configuration"></a>
## Board configuration

Setting up the jumpers on the PolarFire SoC Video Kit, refer to the [Video Kit user's guide](https://mi-v-ecosystem.github.io/redirects/boards-mpfs-sev-kit-sev-kit-user-guide).
The latest Linux images for the PolarFire SoC Video Kit are available from the releases section of the [Meta PolarFire SoC Yocto BSP](https://mi-v-ecosystem.github.io/redirects/releases-meta-polarfire-soc-yocto-bsp) repository.

*In addition, connect an ethernet cable to either ethernet port (an internet connection is required to download the SDK and sample networks) and plug in an HDMI input into J13, and an HDMI output into J14*

<a name="flashing-yocto-linux"></a>
## Flashing Yocto Linux

> On Windows, the Yocto [image can be programmed](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/reference-designs-fpga-and-development-kits/updating-mpfs-kit.md#programming-a-linux-image) via `USBImager`.  
> For detailed documentation please refer to [PolarFire SoC Documentation](https://github.com/polarfire-soc/polarfire-soc-documentation)

<a name="linux-image"></a>

### Linux image

Connect the USB to J19 port on the FPGA.
Program the [2023.02.1 Yocto image](https://github.com/polarfire-soc/meta-polarfire-soc-yocto-bsp/releases/download/v2023.02.1/core-image-minimal-dev-mpfs-video-kit-20230328105837.rootfs.wic.gz) *EXTRACTED*, then power cycle and ensure Yocto Linux boots (on MMUART1). 

Linux images with a '.wic' or ".wic.gz" file extension use a GUID partition table (GPT) and are suitable for programming to the eMMC
>Note: If using an image generated with the PolarFire SoC Yocto BSP, please extract the image so it has the ".wic" extension. Compressed images, i.e with the ".wic.gz" extension should not be programmed as this can cause issues at boot time.

When updating a kit as shown in this section, make sure to keep both the reference design and Linux image versions in sync by using the latest release assets.

<a name="programming-a-linux-image"></a>

### Programming a Linux Image

<a name="emmc"></a>

#### eMMC

A PolarFire SoC kit's eMMC content is written by the Hart Software Services (HSS) using the `usbdmsc` command. The HSS `usbdmsc` command exposes the eMMC as a USB mass storage device through a USB-OTG connector.

If both QSPI and MMC services are enabled in the HSS, you must specify the default device to be programmed before running the `usbdmsc` command. For example, to program the eMMC using USBDMSC service, you must enter the `mmc` command before running the `usbdmsc` command.

<a name="emmc-content-update-procedure"></a>

##### eMMC content update procedure


1. Connect the USB-UART connector to your host PC. This connection will give you access to the PolarFire SoC UARTs
2. Open a terminal application to interact with the HSS through MMUART0. Settings are 115200 baud, 8 data bits, 1 stop bit, no parity, and no flow control.
3. Power on the board and the Microchip logo will be displayed on MMUART0 as the HSS boots.
4. Press a key in the terminal application to stop the HSS from booting(There is a very brief window in which to do this upon starting the board). This will give you access to the HSS command line interface and a ">>" for input will be displayed in the terminal.
5. Type `mmc` to select mmc as a boot source and then `usbdmsc` in the HSS command line interface. If successful, a message saying "Waiting for USB Host to connect" will be displayed.
6. Connect the USB-OTG connector to your host PC. The eMMC content will be transferred to the kit through this connection.
7. The eMMC should now appear as mass storage device/drive on your host PC.
8. Launch USBImager

     ![](https://raw.githubusercontent.com/polarfire-soc/polarfire-soc-documentation/refs/heads/master/reference-designs-fpga-and-development-kits/images/updating-mpfs-kit/start.png)

9. Select the *Image file* you would like to program to the eMMC. Note: Linux images are generated with a time stamp; assets from different releases will have different names.

    ![](https://raw.githubusercontent.com/polarfire-soc/polarfire-soc-documentation/refs/heads/master/reference-designs-fpga-and-development-kits/images/updating-mpfs-kit/select-file.png)

10. Select the target *Device* to program the image to.

    ![](https://raw.githubusercontent.com/polarfire-soc/polarfire-soc-documentation/refs/heads/master/reference-designs-fpga-and-development-kits/images/updating-mpfs-kit/select-device.png)

11. Click *Write*.

    ![](https://raw.githubusercontent.com/polarfire-soc/polarfire-soc-documentation/refs/heads/master/reference-designs-fpga-and-development-kits/images/updating-mpfs-kit/write.png)

12. Once writing has completed, unmount/eject the drive from the host PC and press `CTRL+C` in the HSS command line interface. Disconnect the micro-USB cable from the USB-OTG connector.
13. Type `boot` to boot the newly copied Linux image.
14. HSS boot messages will appear on MMUART0 and the Linux boot will appear on MMUART1.

<a name="demo-building"></a>

## Building the demo
- Login as `root` (on MMUART1 or via ssh over ethernet, IP address for the board can be obtained via either typing `ifconfig` or `ip a | grep dynamic` in the Command Line Interface)
- Download and unzip the [sample networks](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0.2/samples_V1000_2.0.2.zip) to the root directory:
    ```
    wget --no-check-certificate https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases/download/release-v2.0.2/samples_V1000_2.0.2.zip

    unzip samples_V1000_2.0.2.zip 
    ```
- Download and unzip the [VectorBlox SDK](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/archive/refs/tags/release-v2.0.2.zip) to the root directory
    ```
    wget --no-check-certificate https://github.com/Microchip-Vectorblox/VectorBlox-SDK/archive/refs/tags/release-v2.0.2.zip

    unzip release-v2.0.2.zip
    ```

- HDMI cables connected to the PolarFire SoC Video Kit (Rx/Tx)
    > Please check cables and power-cycle board if any issues such as noise/white screen appear on output.

## Setting up MIPI camera
One time Initial camera setup:

- Navigate to the `VectorBlox-SDK-release-v2.0.2/example/soc-video-c` directory

    1. Plug in camera daughter card to PolarFire SOC video kit board if it's not already connected.
    2. Run the `setup_camera.sh` script via `bash setup_camera.sh` (This script will only need to be run once)
    3. After running the script, wait 30 seconds, and then power cycle the board to enable the automatic brightness adjustment
    
- If the camera feed does not automatically adjust the brightness, ensure the `make overlay` step from below is run and then run the `auto_gain` executable found in the `/opt/microchip/` directory with the following:
    ```
     cd /opt/microchip

     ./auto_gain &
    ```

----------------------------------------------------
Info: v4l2-start_service.sh is a start up service that is automatically run at the linux boot up. Between the HDMI input and Camera input path, HDMI has priority and is always selected if plugged in.  For the camera path to be active the HDMI input needs to be unplugged.


## Starting the VectorBlox demo on the PolarFire SoC Video Kit
- Run the following commands in `VectorBlox-SDK-release-v2.0.2/example/soc-video-c` directory:
    - `make overlay` to add the VectorBlox instance to the device tree (This step is not required if the camera setup command is run and working properly) 
    - `make` to build the demo application
    - `./run-video-model` to launch the demo

<a name="Controlling-the-VectorBlox-demo"></a>

## Controlling the VectorBlox demo
- The demo consists of the following:
    - Face Recognition Demo
    - Classification (Mobilenetv2)
    - Object Detection (Yolov8n) 
    - Pose Estimation (Yolov8n Pose)
    - Semantic Segmentation (FFNet-122NS)
    - Depth Estimation (Midas V2)
    
- Use the `ENTER` key to switch modes. Entering `q` (pressing `q` and `ENTER`) quits the demo
- In the `Face Recognition` mode, you can enter `a` to add or `d` to delete face embeddings
    - Entering `a` initially highlights the largest face on-screen, entering `a` again adds that face to the embeddings. You will then be prompted to enter a name( or just press `ENTER` to use the default ID)

    - Entering `d` will list the indices and names of the embeddings. Enter the desired index to delete the specified embedding from the database (or press `ENTER` to skip the deletion)

- Entering `b` on any models that use Pose Estimation for postprocessing will allow the user to toggle between blackout options for the img output.


Samples videos for input to the Faces Recognition mode is available [here](https://github.com/Microchip-Vectorblox/assets/releases/download/assets/SampleFaces.mp4).


Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.
