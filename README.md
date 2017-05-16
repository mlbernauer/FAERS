# FAERS
This repository contains files setting up an FAERS
Postgres database

## Create postgres database faers
```bash
sudo -u postgres createdb faers postgres

```

## Create schema
```bash
sudo -u postgres psql faers < create-tables.sql

```

## Download FAERS files
The file `2016-faers-files.txt` contains URLs for
the 2016 FAERS files (Q1-Q4). Note: if you would
like to use another set of files you should make
sure they are compatable with the 2016 schema files
list in `create-tables.sql`

```bash
./download-faers-data.sh 2016-faers-files.txt
```

## Load data into tables
The required FAERS archive files should be
located within `./data`. We are now ready to
load data into the `faers` database

```bash
./load-data.sh
```

## Create indices

```bash
sudo -u postgres psql faers < create-indices.sql
```
