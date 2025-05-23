# PolarFire&reg; SoC Video Kit VectorBlox Demo QuickStart Guide
## Table of Contents

- [PolarFire&reg; SoC Video Kit VectoBlox Demo QuickStart Guide](#polarfire-soc-video-kit-vectorblox-demo-startup-guide)
- [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Board configuration](#board-configuration)
  - [Programming the Job File](#programming-the-job-file)
  - [Setting up the VectorBlox demo](#setting-up-the-demo)
  - [Setting up MIPI camera](#setting-up-mipi-camera)
  - [Starting the VectorBlox demo](#starting-the-vectorblox-demo)
  - [Running the VectorBlox demo](#running-the-vectorblox-demo)


<a name="prerequisites"></a>

# QuickStart Prerequisites
- [FlashPro Express](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/programming-and-debug#Download%20Software) is required to program an FPGA bitstream to a target development kit. FlashPro Express can be installed as a standalone tool with the Program and Debug tools and is also installed with Libero SoC.
- [USBImager](https://bztsrc.gitlab.io/usbimager/) is required to program a Linux image to a target memory using the Hart Software Services.
- [Setup Serial Terminal](https://onlinedocs.microchip.com/oxy/GUID-E89F0380-CE10-4E39-B622-CA56F677F477-en-US-3/GUID-252CFF5A-1DB8-421F-B210-A5C575B68FE7.html)

<a name="board-configuration"></a>
## Board configuration

Setting up the jumpers on the PolarFire SoC Video Kit, refer to the [Video Kit user's guide](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/v2024.09/reference-designs-fpga-and-development-kits/mpfs-video-kit-user-guide.md). Currently the VectorBlox SoC Video Kit Demo is designed to operate on the 2023.02.1 Yocto, which should be pre-installed. To flash the specific Image, [follow these steps](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo?tab=readme-ov-file#flashing-yocto-linux).
- To obtain the Linux version information login as `root` (no password needed) on UART1 and type the following into the command line: `uname -r`, which should show the Yocto version.

*In addition, connect an ethernet cable to either ethernet port (an internet connection is required to download the SDK and sample networks) and plug in an HDMI input into J13, and an HDMI output into J14*

<a name="Programming the Job file"></a>
## Programming the Job File
Programming the [job](https://github.com/Microchip-Vectorblox/VectorBlox-SoC-Video-Kit-Demo/releases) file will program the FPGA fabric with the latest reference configuration and also program the eNVM with the latest HSS payload. The .zip file in the release assets should be downloaded and extracted to access the programming job file. 
- Connect a USB cable to J5 port(FlashPro6) on FPGA  on the FPGA to program the job file
- Connect a USB cable to J12 port(UART) on FPGA to interact with the FPGA via the Hart Software Service/HSS(UART0) and the Linux terminal (UART1)
- Go through steps on setting up the serial terminal in order for the computer to communicate with the uART on the FPGA. 
- Load the `.job` file in FlashPro Express as a New Project under the Project tab in the menu and then select `Run`.
- Power cycle the board once the process is completed.


<a name="setting-up-the-demo"></a>

## Setting up the VectorBlox demo
- Login as `root` (on MMUART1 or via ssh over ethernet, IP address for the board can be obtained via either typing `ifconfig` or `ip a | grep dynamic` in the Command Line Interface)
- HDMI cables connected to the PolarFire SoC Video Kit (Rx/Tx)
    > Please check cables and power-cycle board if any issues such as noise/white screen appear on output.
- Plug in camera daughter card to PolarFire SOC video kit board if it's not already connected.
- Download and run the [quick_start.sh] script(https://raw.githubusercontent.com/Microchip-Vectorblox/assets/refs/heads/main/quick_start.sh) to the root directory:
    ```
    wget --no-check-certificate https://raw.githubusercontent.com/Microchip-Vectorblox/assets/refs/heads/main/quick_start.sh 

    bash quick_start.sh
    ```
- The `quick_start.sh` script allows for the passing of a version parameter, if none is chosen it will default to `2.0.2`. This feature will only work on Vectorblox 2.0 or higher. For example to setup VectorBlox 2.0.1 on the board use the following command:
    ```
    bash quick_start.sh 2.0.1
    ```
- Once the `quick_start.sh` script is run, wait around 30s and power cycle the board as there can be a delay in file transfer


----------------------------------------------------
Info: `v4l2-start_service.sh` is a start up service that is automatically run at the linux boot up. Between the HDMI input and Camera input path, HDMI has priority and is always selected if plugged in.  For the camera path to be active the HDMI input needs to be unplugged.

<a name="Starting-the-VectorBlox-demo"></a>
## Starting the VectorBlox demo
- Run the following commands in `VectorBlox-SDK-release-v2.0.2/example/soc-video-c` directory:
    - `make overlay` to add the VectorBlox instance to the device tree (This step is not required if the camera setup command is run and working properly) 
    - `make` to build the demo application
    - `./run-video-model` to launch the demo

<a name="Running-the-VectorBlox-demo"></a>

## Running the VectorBlox demo
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
