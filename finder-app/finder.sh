#!/bin/bash

filesdir=$1
searchstr=$2
if [ $# -ne 2 ]; then
	echo "Usage: $0 <path/to/director> <string_to_search_for>"
	exit 1
fi

if [ ! -d ${filesdir} ]; then
	echo "Error: $filesdir is invalid"
	exit 1
fi

if [ -z ${searchstr} ]; then
	echo "Error: $searchstr is invalid"
	exit 1
fi

numOfFiles=$(find "$filesdir" -type f | wc -l)
numOfMatches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numOfFiles and the number of matching lines are $numOfMatches"
	

