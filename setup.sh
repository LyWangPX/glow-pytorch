#!/bin/bash
i=0
for d in train/*/*/
do
    i=$((i + 1))
    if [[ $d == *"sharp/"* ]]; then
        echo $d
        mkdir -p sharp/$i/
        mv $d/* sharp/$i
    fi

    if [[ $d == *"blur/"* ]]; then
        echo $d
        mkdir -p blur/$i/
        mv $d/* blur/$i
    fi
done