#!/usr/bin/env bash
  ## show date ##
date +%T-%m.%d.%Y
data=$(date +%T-%m.%d.%Y)
## add date to end of file ##
if [ $# -eq 0 ]; then
    echo "$data" >> $data.txt
    cat data.txt
    exit 1
    else 
    echo "$data" >> $1
    cat $1
fi
