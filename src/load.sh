#!/usr/bin/bash
#
function main {
	# unzip file into temp directory
	unzip -q $1 -d .tmp/
	FILES=$(find .tmp -iname '*.txt' | egrep -i 'demo|drug|rpsr|reac|outc|indi|ther')
	for file in $FILES; do 
		HEADER=$(head -n1 $file | sed -e 's///g' -e 's/\xef\xbb\xbf//g' | tr [:lower:] [:upper:])
		SCHEMA=($(echo $HEADER | md5sum))
		FILE=$(basename $file)
		SRC_TABLE=$(echo $FILE | tr [:lower:] [:upper:] | cut -c1-4)
		TGT_TABLE=${SRC_TABLE}_${SCHEMA}
		cat \
			<(echo "MODIFIED\$SOURCE\$${HEADER}") \
			<(sed -e '1d;s///g' -e 's/\xef\xbb\xbf//g' -e "s/^/$(date +'%Y-%m-%d')\$${FILE}\$/" $file | tr [:lower:] [:upper:]) | \
			sqlite3 -csv -header -separator '$' $2 ".import /dev/stdin $TGT_TABLE" &> /dev/null
	done
	rm -rf .tmp/
}

if [ "$#" -ne 2 ]; then
	echo "Usage: load.sh <faers_archive> <database>"
	exit 1
fi

main $1 $2
