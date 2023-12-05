drop table if exists indi;
create table indi as
	select
		primaryid,
		indi_drug_seq,
		indi_pt
	from indi_06e73fe721bdeb64637ff273dba8ef37
	union all
	select
		isr as primaryid,
		drug_seq as indi_drug_seq,
		indi_pt
	from indi_6fee29085f85cdec311fc7b481d9bcc4
;
create index indi_idx01 on indi (primaryid, indi_drug_seq);
