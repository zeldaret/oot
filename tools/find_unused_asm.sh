#!/bin/bash

shopt -s globstar

ls asm/non_matchings/**/*.s > old_list.txt
grep GLOBAL_ASM -r src | cut -d '"' -f2 - > cur_list.txt

grep -F "build/data" spec | cut -d '"' -f2 - > data_list.txt
grep -F "build/asm" spec | grep -v -E 'overlays' | cut -d '"' -f2 - >> data_list.txt

ls data/**/*.s > old_data_list.txt
ls asm/*.s >> old_data_list.txt

while read p; do
    tmp=${p%.o}.s
    echo ${tmp#build/} >> list.txt
done < data_list.txt

comm -3 <(sort old_list.txt) <(sort cur_list.txt) > diff.txt
comm -3 <(sort old_data_list.txt) <(sort list.txt) >> diff.txt

rm old_list.txt cur_list.txt old_data_list.txt data_list.txt list.txt

if [ "$1" = "-d" ]
then
    if [ -s diff.txt ]
    then
        rm $(cat diff.txt)
    fi
    rm diff.txt
else
    if [ -s diff.txt ]
    then
        cat diff.txt
        rm diff.txt
        exit 55
    else
        rm diff.txt
    fi
fi
