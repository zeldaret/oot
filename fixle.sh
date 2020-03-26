#!/usr/bin/env bash

var="$1"
if [ ! -n "$var" ]
then
    var=dos2unix
fi

find src -type f -print0 | xargs -0 $var
find include -type f -print0 | xargs -0 $var
$var checksum.md5
