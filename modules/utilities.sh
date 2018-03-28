#!/bin/bash

#Functions to draw header & footer for modules

function createLine() {
    local LINE=$CHARACTER
    for i in $(seq 1 $TOTAL);
    do
       LINE+=$CHARACTER
    done
    echo $LINE
}

function createHeader() {
    echo
    TITLE=$1
    TITLE=$(echo "$TITLE SECTION" | awk '{print toupper($0)}')
    TITLE_LEN=${#TITLE}
    createLine
    CENTRAL_LINE="$CHARACTER $TITLE"
    CURRENT=${#CENTRAL_LINE}
    PENDING=$(expr $TOTAL - $CURRENT)
    for i in $(seq 2 $PENDING);
    do
        CENTRAL_LINE+=$SPACE
    done
    echo "$CENTRAL_LINE #"
    createLine
    echo
}

# Detect a library
function isInstalled(){
    local found
    if dpkg-query -W $1; then
        found="yes"
    else
        found="no"
    fi
    echo "$found"
}
