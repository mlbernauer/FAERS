drop view if exists demo;
create view demo as
	select
		 isr as PRIMARYID, 
		 `case` as CASEID,
		 i_f_cod,
		 event_dt,	
		 mfr_dt,
		 fda_dt,
		 rept_cod,
		 mfr_num,	
		 mfr_sndr,
		 age,
		 age_cod,
		 gndr_cod,	 
		 wt,
		 wt_cod,
		 rept_dt,	
		 occp_cod,
		 death_dt,
		 null as REPORTER_COUNTRY,
		 null as OCCR_COUNTRY		 
	from demo_cc3fd28796cf6bb2998e588e29db5ffa
	union all
	select
		isr as PRIMARYID,
		`case` as caseid,
		i_f_cod,
		event_dt,
		mfr_dt,
		fda_dt,
		rept_cod,
		mfr_num,
		mfr_sndr,
		age,
		age_cod,
		gndr_cod,
		wt,
		wt_cod,
		rept_dt,
		occp_cod,
		death_dt,
		null as reporter_country,
		null as occur_country
	from demo_c8511ddf2ef96b682c7972426423b015
	union all
	select
		primaryid,
		caseid,
		i_f_code as i_f_cod,
		event_dt,
		mfr_dt,
		fda_dt,
		rept_cod,
		mfr_num,
		mfr_sndr,
		age,
		age_cod,
		gndr_cod,
		wt,
		wt_cod,
		` rept_dt`,
		occp_cod,
		null as death_dt,
		reporter_country,
		null as occr_country
	from demo_dfbc3a4208e734a253e0add0f4843067
	union all
	select
		primaryid,
		caseid,
		i_f_code as i_f_cod,
		event_dt,
		mfr_dt,
		fda_dt,
		rept_cod,
		mfr_num,
		mfr_sndr,
		age,
		age_cod,
		gndr_cod,
		wt,
		wt_cod,
		rept_dt,
		occp_cod,
		null as death_dt,
		reporter_country,
		occr_country
	from demo_cf2ca9d3da000fc4c9f0aba794186183
	union all
	select
		primaryid,
		caseid,
		i_f_code as i_f_cod,
		event_dt,
		mfr_dt,
		fda_dt,
		rept_cod,
		mfr_num,
		mfr_sndr,
		age,
		age_cod,
		sex as gndr_cod,
		wt,
		wt_cod,
		rept_dt,
		occp_cod,
		null as death_dt,
		reporter_country,
		occr_country
	from demo_1cf995f4a55eb302bce17cfe90e21547
;
