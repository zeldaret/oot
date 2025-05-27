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
        curl \
        wget \
        unzip \
        clang-tidy \
        clang-format \
        libpng-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /oot
RUN git config --global --add safe.directory /oot

CMD make -j $(nproc) setup && make -j $(nproc) && tail -f /dev/null
