/*
This script creates the table d_drug which contains a list of all distinct drugnames
in the drug view. This table is useful for doing wildcard lookups to retrieve a set
of tokens available in the drug tables.

This script should be run anytime the underlying data in faers.db change

For example:

-- find all drugnames matching AMIFAMP* in the view.drug table FAST!
select
	drugname
from drug
where drugname in (select drugname from d_drug where drugname like 'AMIFAMP%')
*/

drop table if exists d_drug;
create table d_drug as
	select distinct
		drugname
	from drug
;
