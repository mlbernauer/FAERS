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

```bash
# download FAERS file from FDA website
./download.sh

# extract contents
./extract.sh
```

## Load data into tables
Load extracts into Postgres

```bash
./load_data.sh
```

## Create indices

```bash
sudo -u postgres psql faers < create-indices.sql
```
