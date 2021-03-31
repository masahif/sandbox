#!/bin/sh -l
set -eu

echo "start entrypoint.sh"

git clone --recursive -b $OPEN3d_VERSION https://github.com/intel-isl/Open3D.git
mkdir build
cd build

echo "run cmake"
cmake \
    -DBUILD_GUI=OFF \
    -DUSE_SYSTEM_JPEG=ON \
    -DBUILD_EXAMPLES=OFF \
    -DDEVELOPER_BUILD=OFF \
    -DPYTHON_EXECUTABLE=/usr/bin/python3.8 \
    ../Open3D

echo "run make"
make
make pip-package
