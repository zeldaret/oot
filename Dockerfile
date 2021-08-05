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
        clang-format-11 \
        nano \
        vbindiff \
        libpng-dev

RUN python3 -m pip install --user colorama ansiwrap attrs watchdog python-Levenshtein
RUN python3 -m pip install --upgrade attrs pycparser

ENV LANG C.UTF-8

RUN mkdir /oot
WORKDIR /oot
