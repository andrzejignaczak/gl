#!/usr/bin/env bash
## show date ##
date +%T-%m.%d.%Y
data=$(date +%T-%m.%d.%Y)

## add date to new file named as data##
adr=$(pwd)
mkdir $data
touch $adr/$data/log.txt

## show top data ##
danetop=$(top -b -n 1)
echo " ## Start of TOP command ## " >> $adr/$data/log.txt
echo "$danetop">> $adr/$data/log.txt
echo " ## end of TOP command ## " >> $adr/$data/log.txt

## show df -h command ##
echo " ## Start of DF command ## " >> $adr/$data/log.txt
df -h >> $adr/$data/log.txt 2>&1
echo " ## end of DF command ## " >> $adr/$data/log.txt

## show data from datafile ##
cat $adr/$data/log.txt