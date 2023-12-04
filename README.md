# FAERS 2
## Updating Database

``` bash 
# download latest FAERS extracts from the FDA website and save them to ./data
./download_faers_archive.sh 2023 ./data

# load FAERS archive into database...do this for each archive
./load_faers_archive.sh ./data/faers_ascii_2023Q3.zip faers.db
```

# Mapping convents used to harmonize data

| Legacy | Current   | Description                                                   |
| ---    | ---       | ---                                                           |
| isr    | primaryid | Number identifying case report. A case can have many reports. |
| case   | caseid    | A number identifying a case.                                  |

1. Individual Safety Report (ISR) numbers were used by legacy system and are
   now mapped to `report_id` field along with `primaryid` which is used in
   current data releases.
2. Case (`case`) numbers were used by legacy system are now mapped to the
   `case_id` field along with `caseid` which is used in current data relases.
