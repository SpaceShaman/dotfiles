#!/bin/bash

if [ $# -ne 1 ]; then
    python_version=3.12
else
    python_version=$1
fi

echo -e "\033[1;32mInstalling python $python_version...\033[0m"

apt-add-repository -y ppa:deadsnakes/ppa
apt update
apt install -y \
    python$python_version \
    python$python_version-dev \
    python$python_version-venv \
    python$python_version-distutils \
    python$python_version-lib2to3 \
    python$python_version-gdbm \
    python$python_version-tk


# Set installed python as default
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python$python_version 1
update-alternatives --install /usr/bin/python python /usr/bin/python$python_version 1
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Install pip packages
pip install shell-gpt ptpython poetry

echo -e "\033[1;32mPython $python_version installed.\033[0m"