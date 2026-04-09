#!/usr/bin/env bash

tmpdir=$(mktemp -d)
inpath="./data/download"
outdir="./data/extracts"

ascii="$outdir/ascii"
pdf="$outdir/pdf"

mkdir -p $ascii 
mkdir -p $pdf 

# extract all faers files to tmp folder
echo -n "Extracting files..."
find $inpath -type f -ipath '*.zip' | xargs -n1 -P $(nproc --all) unzip -q -o -d $tmpdir > /dev/null
echo "DONE!"

# move ascii files to $ascii
echo -n "Moving ASCII files to $ascii..."
find . $tmpdir -type f -ipath '*ascii*txt' -exec mv {} $ascii \; > /dev/null
echo "DONE!"


# move pdf files to $pdf
echo -n "Moving PDF files to $pdf..."
find . $tmpdir -type f -ipath '*pdf' -exec mv {} $pdf \; > /dev/null
echo "DONE!"
