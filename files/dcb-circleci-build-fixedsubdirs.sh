#!/bin/bash
set -xe

i=0
files=()
for OS in $(find . -name Dockerfile -printf '%h\n' | sed 's/^\.\///' | sort); do
    if [ $(($i % $CIRCLE_NODE_TOTAL)) -eq $CIRCLE_NODE_INDEX ]
    then
	./build.sh $OS
    fi
    ((i=i+1))
done
