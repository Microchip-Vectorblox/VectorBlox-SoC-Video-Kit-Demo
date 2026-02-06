## Flashing Yocto Linux

> On Windows, the Yocto [image can be programmed](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/reference-designs-fpga-and-development-kits/updating-mpfs-kit.md#programming-a-linux-image) via `USBImager`.  
> For detailed documentation please refer to [PolarFire SoC Documentation](https://github.com/polarfire-soc/polarfire-soc-documentation)

<a name="linux-image"></a>

### Linux Image

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

#### eMMC Content Update Procedure


1. Connect the USB-UART connector to your host PC. This connection will give you access to the PolarFire SoC UARTs
2. Open a terminal application to interact with the HSS through MMUART0. Settings are 115200 baud, 8 data bits, 1 stop bit, no parity, and no flow control.
3. Power on the board and the Microchip logo will be displayed on MMUART0 as the HSS boots.
4. Press a key in the terminal application to stop the HSS from booting **(There is a very brief window in which to do this upon starting the board)**. This will give you access to the HSS command line interface and a ">>" for input will be displayed in the terminal.
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
