# FAERS

## Old schema

CASE - Number for identifying an AERS case (A case consists of 1 or more reports)
ISR - Unique number for identifying AERS report.
FOLL_SEQ - Sequence number of a follow-up report (blank for initial reports)

## Updated schema
CASEID - Number for identifying FAERS case
CASEVERSION - Safety report version number (initial case is 1)
PRIMARYID - Unique number for identifying FAERS report (concatenation of CASEID, CASEVERSION)

# ETL
csvstack tool was used to stack all files corresponding to their respective tables. Columns were remapped:
	CASE     => CASEID
	ISR      => PRIMARYID
	FOLL_SEQ => CASEVERSION
	LOT_NBR  => LOT_NUM

csvcols tool was used to inspect column names across files
