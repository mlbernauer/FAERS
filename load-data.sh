#!/bin/bash

CURRDIR=$(pwd)

for i in $CURRDIR/data/*.zip; do
  unzip -o $i -d $CURRDIR/data
  find $CURRDIR/data -iname drug*.txt | xargs -I % sudo -u postgres psql faers -c "copy drug from '"%"' with header csv delimiter E'$'"
  find $CURRDIR/data -iname demo*.txt | xargs -I % sudo -u postgres psql faers -c "copy demo from '"%"' with header csv delimiter E'$'"
  find $CURRDIR/data -iname indi*.txt | xargs -I % sudo -u postgres psql faers -c "copy indi from '"%"' with header csv delimiter E'$'"
  find $CURRDIR/data -iname outc*.txt | xargs -I % sudo -u postgres psql faers -c "copy outc from '"%"' with header csv delimiter E'$'"
  find $CURRDIR/data -iname rpsr*.txt | xargs -I % sudo -u postgres psql faers -c "copy rpsr from '"%"' with header csv delimiter E'$'"
  find $CURRDIR/data -iname ther*.txt | xargs -I % sudo -u postgres psql faers -c "copy ther from '"%"' with header csv delimiter E'$'" 
  find $CURRDIR/data -iname reac*.txt | xargs -I % sudo -u postgres psql faers -c "copy reac from '"%"' with header csv delimiter E'$'"
  rm -rf $CURRDIR/data/ascii
  rm $CURRDIR/data/*.pdf
done
