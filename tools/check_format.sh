#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <full | modified>. Exiting."
    exit -1
fi

STATUSOLD=`git status --porcelain`

if [ $1 = 'modified' ]
then
    FILES_LIST=.tmp_format_modified_files_list.txt
    git show --name-only --format='' origin/main.. | grep 'src/.*\.c' | sort | uniq > $FILES_LIST
    if [ ${PIPESTATUS[0]} -ne 0 ]  # git show failed
    then
        echo "Listing modified files failed. Exiting."
        exit -1
    fi
    ./format.py --verbose -j`nproc` --files-list $FILES_LIST
    FORMAT_EXIT_CODE=$?
    rm $FILES_LIST
elif [ $1 = 'full' ]
then
    ./format.py -j
    FORMAT_EXIT_CODE=$?
else
    echo "Unknown argument $1. Exiting."
    exit -1
fi

if [ $FORMAT_EXIT_CODE -ne 0 ]
then
   echo "Formatter failed. Exiting."
   exit -1
fi
STATUSNEW=`git status --porcelain`

if [ "${STATUSOLD}" != "${STATUSNEW}" ];
then
    echo ""
    echo "Misformatted files found. Run ./format.py and verify codegen is not impacted."
    echo ""
    diff --unified=0  --label "Old git status" <(echo "${STATUSOLD}") --label "New git status" <(echo "${STATUSNEW}")
    echo ""
    echo "Exiting."
    exit 1
fi

exit 0
