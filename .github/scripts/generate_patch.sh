#!/usr/bin/env bash
set -euo pipefail

PATCH=$(git diff | base64 -w 0)
if [ -n "$PATCH" ]; then
    echo 'Fixes were made for your PR. To apply these changes to your working directory, copy and run the following command:' >> $GITHUB_STEP_SUMMARY
    echo '```' >> $GITHUB_STEP_SUMMARY
    echo "echo -n $PATCH | base64 -d | git apply -" >> $GITHUB_STEP_SUMMARY
    echo '```' >> $GITHUB_STEP_SUMMARY
fi
