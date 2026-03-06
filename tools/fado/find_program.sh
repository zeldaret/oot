#!/usr/bin/env bash

for i in "${@:2}"
    do
        RESULT=$(IFS=:;find $PATH -maxdepth 1 -name "$i" -print -quit 2> /dev/null | grep -o '[^/]*$')
        COUNT=$(echo "$RESULT" | wc -c)

        if [ $COUNT -gt 1 ]
        then
            echo $RESULT
            exit 0
        fi
    done

echo $1
exit 0
