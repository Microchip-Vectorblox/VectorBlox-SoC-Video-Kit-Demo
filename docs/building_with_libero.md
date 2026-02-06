# Building with Libero v2025.1 Setup Guide
### Licensing

If building the Video Kit VectorBlox Design in Libero, two free licences -- `Libero SoC Silver License` and `Libero Soc VectorBlox License` are required. Licensing information is available on the Microchip website [here](https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/licensing).


## Using the VectorBlox Design Generation Tcl Script


### Standard Design Generation

To generate the Vectorblox demo design, the following flow can be used:

1. Clone or download the repository
2. Open Libero v2025.1
3. Open the execute script dialog (CTRL + U)
4. Execute the "MPFS_VIDEO_KIT_REFERENCE_DESIGN.tcl" script
5. Configure the design if required
6. Run the Libero SoC design flow to program a device


### Arguments Supported

Below arguments are supported to modify or configure aspects of the design flow that will be run. Supported arguments are:

| Argument                  | Description                                                                                                                                |
| :------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------|
| HSS_UPDATE                | Downloads the HSS release hex file associated with this release of the reference design. <br>The hex file is added as an eNVM client in Libero. <br>This argument requires wget to be installed. <br>This is installed by default on most Linux systems, on Windows® wget (version 1.14 or above) <br>should be installed and added to the system path, steps are shown in the following [guide](https://www.addictivetips.com/windows-tips/install-and-use-wget-in-windows-10/) |
| SYNTHESIZE                | Runs the synthesis step after design generation has completed                                                         |
| PLACEROUTE                | Runs the synthesis and place and route steps after design generation has completed                                    |
| VERIFY_TIMING             | Runs the synthesis, place and route and timing verification steps after design generation has completed               |
| GENERATE_PROGRAMMING_DATA | Generates the files required to generate a bitstream for programming a device                                         |
| EXPORT_FPE                | Runs the full design flow after generating a design and exports a FlashPro Express file to the local directory                              |

### Additional Arguments
By default, the project is generated with both HDMI and MIPI inputs, and the VectorBlox IP is configured with no compression support. Currently, the unstructured compression configuration is supported for either HDMI or MIPI input, while the compression configuration is supported for both.  

#### Compression Arguments

| Argument                  | Description                                                                                                                                |
| :------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------|
| COMP    |  Generates the project with support for compression |
| UCOMP   |  Generates the project with support for unstructured compression     |
                             
#### Input Arguments
| Argument                  | Description                                                                                                                                |
| :------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------|
| HDMI    |  Generates the project with only HDMI input |
| MIPI    |  Generates the project with only MIPI camera input |



### Programming the FPGA

Once the script has completed the design can be configured further if needed and the Libero SoC design flow can be run by double clicking on a stage in the design flow on the left hand side of Libero. Selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run any required steps, such as, "Synthesize", "Place and Route", etc and then program the device.

### Next Steps

Once the device has been programmed, please refer to the [Quickstart Setup Guide](./Quickstart.md). Complete all steps in the quickstart guide, and in step 3 of the quickstart, use the job file that was exported by Libero to program the board.


