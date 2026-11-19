# Third-Party Software Notices and Licenses

This file documents the third-party licenses for artifacts distributed in the
GitHub release at
https://github.com/Microchip-Vectorblox/assets/releases/tag/assets.

Each component is subject to its own license terms as described below.

---

## Pre-Trained Model Artifacts

### Ultralytics

- **Files:** `yolov5n_70s_512x512.ucomp`, `yolov8n_50s_25p_512x512.ucomp`, `yolov8n_50s_25p_512x288.ucomp`,`yolov8n_pose_50s_25p_512x288_split.ucomp`
      `yolov8n_comp66_V1000_comp.vnnx`, `yolov8s_comp68_V1000_comp.vnnx`, `yolov8n_512x288_argmax_V1000_ncomp.vnnx`, `yolov8n-pose_512x288_split_V1000_ncomp.vnnx`
- **License:** AGPL-3.0
- **Copyright:** (c) Ultralytics Inc.
- **Source:** https://github.com/ultralytics/ultralytics

```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
```

**Note:** Ultralytics YOLO models are available under the AGPL-3.0 open-source
license. Projects that are not open source require an Ultralytics Enterprise
License. To obtain a commercial license for R&D and production use without
open-source obligations, please complete the licensing form at
https://www.ultralytics.com/license.


---

### YOLOv9

- **Files:** `yolov9s_70s_15p_512x512.ucomp`, `yolov9s_70s_15p_512x288.ucomp`
- **License:** GPL-3.0
- **Copyright:** (c) WongKinYiu
- **Source:** https://github.com/WongKinYiu/yolov9

```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
```

---

### ResNet-18 (Pruned/Sparsified)

- **Files:** `resnet18_86s_07p.ucomp`
- **License:** BSD-3-Clause
- **Copyright:** (c) Soumith Chintala 2016 (torchvision); original architecture by Kaiming He et al.
- **Source:** https://github.com/pytorch/vision

```
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

---

## Notes

1. **Ultralytics models** (`yolov5*`, `yolov8*`) are distributed
   under the AGPL-3.0 license. Projects that are not open source require an
   Ultralytics Enterprise License. To obtain a commercial license, visit
   https://www.ultralytics.com/license.

2. **YOLOv9 models** are distributed under the GPL-3.0 license by WongKinYiu.
