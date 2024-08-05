#!/bin/bash

if [ ! $# -eq 2 ]
then
	echo "Error: too few args"
	exit 1
fi

writefile=$1
writestr=$2
fileDir=$(dirname "$writefile")

if [ -z $writestr ]
then
	echo "Error: $writestr invalid string"
fi

if [ ! -d $fileDir ]
then
	mkdir -p $fileDir
fi

echo $writestr >> $writefile

if [ ! $? -eq 0 ]; then
	echo "Error: file could not created"
	exit 1
fi
