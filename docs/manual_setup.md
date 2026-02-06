## Setting up MIPI Camera
- Manual camera setup:

    1. Plug in camera daughter card to PolarFire SOC video kit board if it's not already connected.
	2. Run the `setup_camera.sh` script via `bash setup_camera.sh` (This script will only need to be run once, script can be found in the `VectorBlox_SDK/example/soc-video-c` directory, this script should only be run after running the `quick_start_3_0.sh` script if the camera fails to function properly)
    3. After running the script, power cycle the board to enable the automatic brightness adjustment
    
- If the camera feed does not automatically adjust the brightness, ensure the `make overlay` step from below is run and then run the `auto_gain` executable found in the `/opt/microchip/` directory with the following:
    ```
     cd /opt/microchip

     ./auto_gain &
    ```

----------------------------------------------------
Info: v4l2-start_service.sh is a start up service that is automatically run at the linux boot up. Between the HDMI input and Camera input path, HDMI has priority and is always selected if plugged in.  For the camera path to be active the HDMI input needs to be unplugged.


## Starting the VectorBlox Demo
- Run the following commands in `VectorBlox-SDK-release-v3.0/example/soc-video-c` directory:
    - `make overlay` to add the VectorBlox instance to the device tree (This step is not required if the camera setup command is run and working properly) 
    - `make` to build the demo application
    - `./run-video-model` to launch the demo