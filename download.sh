#!/usr/bin/env bash

url="https://fis.fda.gov/extensions/fpd-qde-faers/fpd-qde-faers.html"
output="./data/download"
echo -n "Downloading FAERS files to $output this might take awhile..."
curl -s $url | grep -o -i 'https[^<>]*ascii[^<>]*.zip' | head -n 3 | xargs -n1 -P $(nproc --all) wget -q -P $output
echo "DONE!"
