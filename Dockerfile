FROM ubuntu:18.04 as build

RUN apt-get update && \
    apt-get install -y \
        binutils-mips-linux-gnu \
        build-essential \
        pkg-config \
        python3 \
        python3-pip \
        wget \
        git \
        unzip \
        clang-tidy \
        clang-format \
        nano \
        vbindiff

RUN wget \
        https://github.com/n64decomp/qemu-irix/releases/download/v2.11-deb/qemu-irix-2.11.0-2169-g32ab296eef_amd64.deb \
        -O qemu.deb && \
    echo 8170f37cf03a08cc2d7c1c58f10d650ea0d158f711f6916da9364f6d8c85f741 qemu.deb | sha256sum --check && \
    dpkg -i qemu.deb && \
    rm qemu.deb

RUN python3 -m pip install --user colorama ansiwrap attrs watchdog python-Levenshtein
RUN python3 -m pip install --upgrade attrs pycparser

ENV LANG C.UTF-8

RUN mkdir /oot
WORKDIR /oot
