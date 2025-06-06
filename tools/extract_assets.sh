#!/usr/bin/env bash

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

if [ $# -eq 0 ]
then
    echo "Usage: $0 <version> [args...]"
    exit 1
fi

v=$1
.venv/bin/python3 -m tools.assets.extract extracted/$v/baserom extracted/$v -v $v "${@:2}"
