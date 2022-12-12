#!/usr/bin/env bash
ssh -q 192.168.56.123 'exit 0'
if [ $? = "0" ]
then
    echo "Connection possible."
    exit 0
else
    echo "Connection impossible."
    exit 0
fi
