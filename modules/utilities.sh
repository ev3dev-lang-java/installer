#!/bin/bash

#Functions to draw header & footer for modules

CHARACTER="#"
SPACE=" "
TOTAL=40
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
INSTALLED_YES="YES";
INSTALLED_NO="NO";
INSTALLED=$INSTALLED_NO;
PATTERN_NOT_FOUND="no packages found";
function isInstalled(){
    if dpkg-query -W $1; then
        INSTALLED=$INSTALLED_YES
    else
        INSTALLED=$INSTALLED_NO
    fi
    echo $INSTALLED
}