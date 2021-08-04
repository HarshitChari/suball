#!/bin/sh

filename=$1
while read line; do
        echo "Sublist3r"
        subfinder -d $line -o $line.txt
        echo "Finding for takeover"
        subzy -targets $line.txt |tee -a $1takeover.txt
done < $filename


