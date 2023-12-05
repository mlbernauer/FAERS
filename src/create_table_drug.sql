drop table if exists drug;
create table drug as
	select
		isr as primaryid,
		drug_seq,
		role_cod,
		drugname,
		null as prod_ai,
		val_vbm,
		route,
		dose_vbm,
		null as cum_dose_chr,
		null as cum_dose_unit,
		dechal,
		rechal,
		lot_num,
		exp_dt,
		nda_num,
		null as dose_amt,
		null as dose_unit,
		null as dose_form,
		null as dose_freq
	from drug_802d7676c46e367a6ee6f97ba3e1def1
	union all
	select
		primaryid,
		drug_seq,
		role_cod,
		drugname,
		null as prod_ai,
		val_vbm,
		route,
		dose_vbm,
		cum_dose_chr,
		cum_dose_unit,
		dechal,
		rechal,
		lot_nbr as lot_num,
		exp_dt,
		nda_num,
		dose_amt,
		dose_unit,
		dose_form,
		dose_freq
	from drug_8d6d3e80ff6663df60b109068fa72820
	union all
	select 
		primaryid,
		drug_seq,
		role_cod,
		drugname,
		null as prod_ai,
		val_vbm,
		route,
		dose_vbm,
		cum_dose_chr,
		cum_dose_unit,
		dechal,
		rechal,
		lot_num,
		exp_dt,
		nda_num,
		dose_amt,
		dose_unit,
		dose_form,
		dose_freq
	from drug_9a71ab9cb3ab708def4391f2c472b75f
	union all
	select
		primaryid,
		drug_seq,
		role_cod,
		drugname,
		prod_ai,
		val_vbm,
		route,
		dose_vbm,
		cum_dose_chr,
		cum_dose_unit,
		dechal,
		rechal,
		lot_num,
		exp_dt,
		nda_num,
		dose_amt,
		dose_unit,
		dose_form,
		dose_freq
	from drug_ac2178f08adc9ba7a7a39395a31f281b
;
create index drug_idx01 on drug (primaryid, drug_seq);
create index drug_idx02 on drug (drugname);
