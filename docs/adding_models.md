# Adding Additional Models
By default, the demo runs starts with a select set of models. These models can be changed in the `demo_models.h` header file found in the [`examples/soc-video-c`](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/master/example/soc-video-c) directory.


Currently, post-processing routines exist for object detection, classification, facial recognition, and pose estimation. Users will have to write additional post-processing code to run other models.

The following sections describe how to run the alternate models
## Obtaining Model File
To obtain the model files, you can run the tutorial available in the VectorBlox SDK in github.com/Microchip-Vectorblox/VectorBlox-SDK. You can find instructions for running the tutorials in the Programmer's Guide, which is available as part of the SDK documentation. Generate the model using this tutorial: [```VectorBlox-SDK/tree/master/tutorials/ultralytics/yolov8n-cls.```](https://github.com/Microchip-Vectorblox/VectorBlox-SDK/tree/master/tutorials/ultralytics/yolov8n-cls)

Generated model binaries can be transferred to the SoC-videokit via SCP.

In the `demo_models.h` file in the `soc-video-c` directory, here's an example of the following code (specific struct attributes would vary).
```
struct model_descr_t models[] = {
 {"Yolo v8n", "/home/root/samples/yolov8n.vnnx", 0, "ULTRALYTICS_CUT"},
 {"SCRFD", "/home/root/samples/scrfd_500m_bnkps.vnnx", 0, "SCRFD"},
 {"mobileface-arcface", "/home/root/samples/mobilefacenet-arcface.vnnx", 0, "ARCFACE"},
 {"MobileNet V2", "/home/root/samples/mobilenet-v2.vnnx", 0, "IMAGENET"},
};
```
Change the code to the following:
```
struct model_descr_t models[] = {
 {"Yolo v8n", "/home/root/sample/yolov8n.vnnx", 0, "ULTRALYTICS_CUT"},
 {"SCRFD", "/home/root/samples/scrfd_500m_bnkps.vnnx", 0, "SCRFD"},
 {"mobileface-arcface", "/home/root/samples/mobilefacenet-arcface.vnnx", 0, "ARCFACE"},
 {"MobileNet V2", "/home/root/samples/mobilenet-v2.vnnx", 0, "IMAGENET"},
 {"Yolo v8n Classifier", "/home/root/samples/yolov8n-cls.vnnx", 0, "CLASSIFY"},
};
```