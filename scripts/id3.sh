#!/usr/bin/env bash

set -euxo pipefail

if [[ $# -ne 4 ]]; then
    echo "usage: id3.sh track title year file"
    exit 1
else
    track=$1
    title=$2
    year=$3
    file=$4
    id3v2 --artist "The Pakweight Show" $file
    id3v2 --genre 186 $file
    id3v2 --track $track $file
    id3v2 --year $year $file
    id3v2 -t $title $file
    id3v2 --list $file
fi
