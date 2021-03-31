#!/bin/sh -l
set -eu

echo "start entrypoint.sh"
mkdir build
cd build

echo "run cmake"
cmake \
    -DBUILD_GUI=OFF \
    -DUSE_SYSTEM_JPEG=ON \
    -DBUILD_EXAMPLES=OFF \
    -DDEVELOPER_BUILD=OFF \
    -DPYTHON_EXECUTABLE=/usr/bin/python3.8 \
    $GITHUB_WORKSPACE/Open3D

echo "run make"
make
make pip-package
