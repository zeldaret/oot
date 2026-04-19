#!/usr/bin/env bash
set -euo pipefail

echo "\`\`\`"
echo "Build failed, attempting to fix BSS ordering..."

.venv/bin/python3 tools/fix_bss.py -v ${VERSION}

PATCH=$(git diff | base64 -w 0)
if [ -n "$PATCH" ]; then
    echo "Fixes were made for your PR. To apply these changes to your working directory,"
    echo "copy and run the following command:"
    echo
    echo "echo -n $PATCH | base64 -d | git apply -"
    echo
fi
echo "\`\`\`"

exit 1
