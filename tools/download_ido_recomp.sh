#!/usr/bin/env bash

# Downloads compilers from https://github.com/decompals/ido-static-recomp
# Usage: download_ido_recomp.sh OUTPUT_DIR

set -euo pipefail

IDO_RECOMP_URL="https://github.com/decompals/ido-static-recomp"
IDO_RECOMP_VERSION="v1.2"

OUTPUT_DIR="$1"
if [ -z "$OUTPUT_DIR" ]; then
    echo "Usage: $0 OUTPUT_DIR"
    exit 1
fi

UNAME_S=$(uname -s)
case $UNAME_S in
    Linux)
        PLATFORM="linux"
        ;;
    Darwin)
        PLATFORM="macos"
        ;;
    *)
        echo "Unsupported platform: $UNAME_S"
        exit 1
        ;;
esac

for IDO_VERSION in 5.3 7.1; do
    URL="$IDO_RECOMP_URL/releases/download/$IDO_RECOMP_VERSION/ido-$IDO_VERSION-recomp-$PLATFORM.tar.gz"
    COMPILER_DIR="$OUTPUT_DIR/$PLATFORM/$IDO_VERSION"

    echo "Downloading $URL to $COMPILER_DIR ..."
    mkdir -p "$COMPILER_DIR"
    curl -L "$URL" | tar xz -C "$COMPILER_DIR"
done
