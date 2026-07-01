# Building with Libero SoC Setup Guide

## Licensing

If building the Video Kit VectorBlox Design in Libero, two free licenses are required: `Libero SoC Silver License` and `Libero SoC VectorBlox License`. Licensing information is available on the Microchip website [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/licensing).

## Using the VectorBlox Design Generation Tcl Script

### Standard Design Generation

To generate the VectorBlox demo design, the following flow can be used:

1. Clone or download the repository
2. Open Libero SoC
3. Open the execute script dialog (CTRL + U) from the Welcome Page
4. Execute the "MPFS_VIDEO_KIT_REFERENCE_DESIGN.tcl" script
5. Configure the design if required
6. Run the Libero SoC design flow to program a device

### Arguments Supported

If you want to build the smart design in a Libero Project without compiling it (synthesis, place and route, etc.), do not specify any arguments for the Tcl script. The following arguments are supported to modify or configure aspects of the design flow that will be run:  

| Argument                  | Description                                                                                                                                |
| :------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------|
| HSS_UPDATE                | Downloads the HSS release hex file associated with this release of the reference design. <br>The hex file is added as an eNVM client in Libero. <br>This argument requires wget to be installed. <br>This is installed by default on most Linux systems, on Windows® wget (version 1.14 or above) <br>should be installed and added to the system path, steps are shown in the following [guide](https://www.addictivetips.com/windows-tips/install-and-use-wget-in-windows-10/) |
| SYNTHESIZE                | Runs the synthesis step after design generation has completed                                                         |
| PLACEROUTE                | Runs the synthesis and place and route steps after design generation has completed                                    |
| VERIFY_TIMING             | Runs the synthesis, place and route and timing verification steps after design generation has completed               |
| GENERATE_PROGRAMMING_DATA | Generates the files required to generate a bitstream for programming a device                                         |
| EXPORT_FPE                | Runs the full design flow after generating a design and exports a FlashPro Express file to the local directory                              |

### Optional Arguments

By default, the project is generated with both HDMI and MIPI inputs, and the VectorBlox IP is configured with no compression support. When getting started, it is recommended to use no compression. To do this, pass no arguments for compression and input. This will cause the .tcl to default to no compression and both MIPI & HDMI input. Currently, the unstructured compression configuration is supported for either HDMI or MIPI input, while the compression configuration is supported for both. For more information on unstructured compression and compression, please refer to the [VectorBlox-Compression Repo](https://github.com/Microchip-Vectorblox/VectorBlox-Compression) on GitHub.

#### Compression Arguments

| Argument | Description                                                     |
| :------- | :-------------------------------------------------------------- |
| COMP     | Generates the project with support for compression              |
| UCOMP    | Generates the project with support for unstructured compression |

#### Input Arguments

| Argument | Description                                       |
| :------- | :------------------------------------------------ |
| HDMI     | Generates the project with only HDMI input        |
| MIPI     | Generates the project with only MIPI camera input |

### Programming the FPGA

After the script completes, you can further configure the design and run the Libero SoC design flow by double-clicking any stage in the design flow panel (left side of Libero). Selecting a stage that requires previous steps will automatically run the complete flow up to that point.  

For example, double-clicking "Run Program Action" will automatically execute all necessary steps (Synthesize, Place and Route, etc.) and then program the device. When using "Run Program Action," the device is programmed directly, eliminating the need for a separate job file.

### Next Steps

**If you programmed the device using "Run Program Action" in Libero:**

Complete all steps in the [Quickstart Setup Guide](./Quickstart.md), **skipping "Step 3: Programming the Job File"** (your device is already programmed).

**If you plan to program the device with the .job file generated from Libero:**

1. Click "Export FlashPro Express Job" in Libero to generate a job file
2. Complete all steps in the [Quickstart Setup Guide](./Quickstart.md)
3. Use the generated job file from Libero in "Step 3: Programming the Job File"
