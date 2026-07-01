## Setting up MIPI Camera

- Manual camera setup:

    1. Plug in the camera daughter card to the PolarFire SoC video kit board if it's not already connected.
    2. Run `bash setup_camera.sh` from the `VectorBlox-SDK-release-v3.1/example/soc-video-c` directory. This script only needs to be run once, and only if the camera fails to function properly after running `quick_start_3.sh`.
    3. After running the script, power cycle the board to enable the automatic brightness adjustment.

- If the camera feed does not automatically adjust the brightness, ensure the `make overlay` step from below is run and then run the `auto_gain` executable found in the `/opt/microchip/` directory with the following:

    ```bash
     cd /opt/microchip

     ./auto_gain &
    ```

----------------------------------------------------
Info: v4l2-start_service.sh is a startup service that is automatically run at Linux boot. HDMI input takes priority over camera input when both are connected. For the camera path to be active, the HDMI input needs to be unplugged.

## Starting the VectorBlox Demo

- Run the following commands in the `VectorBlox-SDK-release-v3.1/example/soc-video-c` directory:
  - `make overlay` to add the VectorBlox instance to the device tree (this step is not required if the camera setup command is run and working properly)
  - `make` to build the demo application
  - `./run-video-model` to launch the demo
