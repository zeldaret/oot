FROM ubuntu:24.04 AS build

ENV TZ=UTC
ENV LANG=C.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && \
    apt-get install -y \
        binutils-mips-linux-gnu \
        build-essential \
        pkg-config \
        python3 \
        python3-pip \
        python3-venv \
        git \
        wget \
        unzip \
        clang-tidy \
        clang-format \
        libpng-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m venv .venv && . .venv/bin/activate && \ 
    python3 -m pip install colorama ansiwrap attrs watchdog python-Levenshtein "mapfile-parser>=1.2.1,<2.0.0" "rabbitizer>=1.0.0,<2.0.0" && \
    python3 -m pip install --upgrade attrs pycparser


WORKDIR /oot
RUN git config --global --add safe.directory /oot

CMD ["/bin/sh", "-c", \
    "echo 'usage:\n  docker run --rm --mount type=bind,source=\"$(pwd)\",destination=/oot oot make -j$(nproc) setup\n  docker run --rm --mount type=bind,source=\"$(pwd)\",destination=/oot oot make -j$(nproc)'"]
