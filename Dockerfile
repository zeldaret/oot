FROM ubuntu:24.04
ENV TZ=UTC
ENV LANG=C.UTF-8
ENV N64_GCCPREFIX=/opt/libdragon

ADD https://github.com/DragonMinded/libdragon/releases/download/toolchain-continuous-prerelease/gcc-toolchain-mips64-x86_64.deb gcc-toolchain-mips64-x86_64.deb

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y \
        build-essential \
        python3 \
        python3-pip \
        git \
        curl \
        clang-tidy-14 \
        clang-format-14
RUN apt-get install -y ./gcc-toolchain-mips64-x86_64.deb
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /oot
WORKDIR /oot

RUN git config --global --add safe.directory /oot

CMD ["/bin/sh", "-c", \
    "echo 'usage:\n  docker run --rm --mount type=bind,source=\"$(pwd)\",destination=/oot oot make -j$(nproc) setup\n  docker run --rm --mount type=bind,source=\"$(pwd)\",destination=/oot oot make -j$(nproc)'"]
