FROM ubuntu@sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322 as build

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
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
