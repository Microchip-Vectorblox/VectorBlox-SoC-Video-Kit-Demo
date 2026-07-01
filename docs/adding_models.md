# Adding Additional Models

By default, the demo starts with a predefined set of models. These models can be changed in the `demo_models.h` header file found in the [examples/soc-video-c](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/master/example/soc-video-c) directory of the VectorBlox SDK. This document shows how to add a new model from the VectorBlox-SDK's existing set of tutorials.

Currently, custom post-processing routines exist for object detection, classification, face recognition, and pose estimation to display on the video demo or print outputs in the command line. Users will have to write additional post-processing code to run other models or modify existing post-processing code to suit their needs. Please contact the VectorBlox team for more information.

The following sections describe how to run the alternate models.

## Obtaining Model File

To obtain the new model file for one of the existing tutorials, one needs to run the tutorial available in the VectorBlox SDK at [github.com/Microchip-Vectorblox/VectorBlox-SDK](https://github.com/Microchip-Vectorblox/VectorBlox-SDK). Instructions can be found for running the tutorials in the Programmer's Guide, which is available as part of the SDK documentation. For this document, assume the new model is `yolov8n-cls`. In order to get the model file for `yolov8n-cls`, generate the model using this tutorial: [VectorBlox-SDK/tree/master/tutorials/ultralytics/yolov8n-cls](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/master/tutorials/ultralytics/yolov8n-cls). Running the tutorial will generate the appropriate binary version of the model file with the file extension `.vnnx`.

The generated model binary needs to be transferred to the SoC Video Kit, e.g., via the `scp` command.

Below is an example from the `demo_models.h` file in the `soc-video-c` directory (specific struct attributes will vary).

```c++
struct model_descr_t models[] = {
 {"Yolo v8n", "/home/root/samples/yolov8n.vnnx", 0, "ULTRALYTICS_CUT"},
 {"SCRFD", "/home/root/samples/scrfd_500m_bnkps.vnnx", 0, "SCRFD"},
 {"mobileface-arcface", "/home/root/samples/mobilefacenet-arcface.vnnx", 0, "ARCFACE"},
 {"MobileNet V2", "/home/root/samples/mobilenet-v2.vnnx", 0, "IMAGENET"},
};
```

Assuming the generated model file was named `yolov8n-cls.vnnx` and that it was transferred to `/home/root/samples`, the above code should be changed to the following:

```c++
struct model_descr_t models[] = {
 {"Yolo v8n", "/home/root/sample/yolov8n.vnnx", 0, "ULTRALYTICS_CUT"},
 {"SCRFD", "/home/root/samples/scrfd_500m_bnkps.vnnx", 0, "SCRFD"},
 {"mobileface-arcface", "/home/root/samples/mobilefacenet-arcface.vnnx", 0, "ARCFACE"},
 {"MobileNet V2", "/home/root/samples/mobilenet-v2.vnnx", 0, "IMAGENET"},
 {"Yolo v8n Classifier", "/home/root/samples/yolov8n-cls.vnnx", 0, "CLASSIFY"},
};
```
