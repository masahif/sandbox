FROM amazonlinux:2

# Install apps for building cmake and Open3D
RUN yum -y groupinstall "Development Tools"
RUN yum install -y \
    gcc \
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
    zlib-devel \
    bzip2 \
    bzip2-devel \
    readline-devel \
    sqlite \
    sqlite-devel \
    libffi-devel \
    openssl-devel \
    tk-devel \
    ibffi-devel \
    xz-devel \
    tar \
    amazon-linux-extras

# Install Python3.9
RUN git clone https://github.com/pyenv/pyenv.git pyenv
RUN ./pyenv/plugins/python-build/bin/python-build 3.9.7 /usr/local

# Use pip3 version of cmake since we need more recent version for Open3D
RUN /usr/local/bin/pip install cmake wheel

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
