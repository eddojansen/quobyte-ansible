#!/bin/bash
trap "kill $$" SIGINT
set -x
SERVERS=$(cat nodes)
for s in $SERVERS
do scp -r  "$1" $s:$1 
done 
