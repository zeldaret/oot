#!/usr/bin/env bash
set -euo pipefail

PATCH=$(git diff | base64 -w 0)
if [ -n "$PATCH" ]; then
    echo "Jenkins made some fixes to your PR. To apply these changes to your working directory,"
    echo "copy and run the following command (triple-click to select the entire line):"
    echo
    echo "echo -n $PATCH | base64 -d | git apply -"
    echo
fi
