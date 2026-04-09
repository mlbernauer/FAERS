#!/usr/bin/env bash

datadir="./data/extracts/ascii"

load_table() {
  table=$1
  echo -n "Loading table $table..."
  find $datadir -iname "$table*.txt" > /dev/null  #| xargs -I % sudo -u postgres psql faers -c "copy $table from '"%"' with header csv delimiter E'$'"
  echo "DONE!"
}

tables=(drug demo indi outc rpsr ther reac);

# copy files to datase
for table in "${tables[@]}"; do
  load_table $table
done
