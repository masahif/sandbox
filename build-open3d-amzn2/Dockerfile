FROM amazonlinux:2

# Install apps for building cmake and Open3D
RUN yum install -y \
    gcc-c++ \
    git \
    libjpeg-turbo-devel \
    libXcursor-devel \
    libXi-devel \
    libXinerama-devel \
    libXrandr-devel \
    libX11-devel \
    make \
    mesa-libGLU-devel \
    openssl-devel \
    amazon-linux-extras

# Install Python3.8
RUN amazon-linux-extras enable python3.8 \
    && yum install -y \
    python3.8 \
    python38-devel

# Use pip3 version of cmake since we need more recent version for Open3D
RUN pip3.8 install cmake wheel

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
