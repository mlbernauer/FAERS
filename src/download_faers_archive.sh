#!/usr/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Usage: download_faers_data.sh <year> <output_dir>"
	exit 1
fi

if [ ! -e "$2" ]; then
	mkdir -p $2
fi

wget -P "$2" -nd -r -A "*ascii*$1*.zip" 'https://fis.fda.gov/extensions/FPD-QDE-FAERS/FPD-QDE-FAERS.html'
