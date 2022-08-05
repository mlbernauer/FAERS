find ./data/ -name '*.zip' | xargs -n1 -P8 sh -c 'unzip -q -d ./data/csv/$(basename $1 .zip) $1' {}
