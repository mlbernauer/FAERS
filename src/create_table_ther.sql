drop table if exists ther;
create table ther as
	select
		isr as PRIMARYID,
		drug_seq as DSG_DRUG_SEQ,
		start_dt,
		end_dt,
		dur,
		dur_cod
	from ther_15ecf4cf93b4fb27078b6150b5624fb0
	union all
	select
		primaryid,
		dsg_drug_seq,
		start_dt,
		end_dt,
		dur,
		dur_cod
	from ther_6c8361911e2c5e50baf5f656faa4adc9
;
create index ther_idx01 on ther (primaryid, dsg_drug_seq);

