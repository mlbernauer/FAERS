/* Drop indexes if exist */
drop index if exists idx_01;
drop index if exists idx_02;
drop index if exists idx_03;
drop index if exists idx_04;
drop index if exists idx_05;
drop index if exists idx_06;
drop index if exists idx_07;
drop index if exists idx_08;
drop index if exists idx_09;
drop index if exists idx_10;
drop index if exists idx_11;
drop index if exists idx_12;
drop index if exists idx_13;
drop index if exists idx_14;
drop index if exists idx_15;
drop index if exists idx_16;
drop index if exists idx_17;
drop index if exists idx_18;
drop index if exists idx_19;
drop index if exists idx_20;
drop index if exists idx_21;
drop index if exists idx_22;
drop index if exists idx_23;
drop index if exists idx_24;
drop index if exists idx_25;
drop index if exists idx_26;
drop index if exists idx_27;
drop index if exists idx_28;
drop index if exists idx_29;
drop index if exists idx_30;

/* Create indexes */
create index idx_01 on DEMO_1cf995f4a55eb302bce17cfe90e21547 ( PRIMARYID, CASEID);

create index idx_02 on DEMO_c8511ddf2ef96b682c7972426423b015 ( ISR, `CASE`);

create index idx_03 on DEMO_cc3fd28796cf6bb2998e588e29db5ffa ( ISR, `CASE`);

create index idx_04 on DEMO_cf2ca9d3da000fc4c9f0aba794186183 ( PRIMARYID, CASEID);

create index idx_05 on DEMO_dfbc3a4208e734a253e0add0f4843067 ( PRIMARYID, CASEID);

create index idx_06 on DRUG_802d7676c46e367a6ee6f97ba3e1def1 ( ISR, DRUG_SEQ);
create index idx_07 on DRUG_802d7676c46e367a6ee6f97ba3e1def1 ( DRUGNAME );

create index idx_08 on DRUG_8d6d3e80ff6663df60b109068fa72820 (PRIMARYID, CASEID, DRUG_SEQ);
create index idx_09 on DRUG_8d6d3e80ff6663df60b109068fa72820 (DRUGNAME);

create index idx_10 on DRUG_9a71ab9cb3ab708def4391f2c472b75f (PRIMARYID, CASEID, DRUG_SEQ);
create index idx_11 on DRUG_9a71ab9cb3ab708def4391f2c472b75f (DRUGNAME);

create index idx_12 on DRUG_ac2178f08adc9ba7a7a39395a31f281b (PRIMARYID, CASEID, DRUG_SEQ);
create index idx_13 on DRUG_ac2178f08adc9ba7a7a39395a31f281b (DRUGNAME);

create index idx_14 on INDI_06e73fe721bdeb64637ff273dba8ef37 (PRIMARYID, CASEID, INDI_DRUG_SEQ);
create index idx_15 on INDI_06e73fe721bdeb64637ff273dba8ef37 (INDI_PT);

create index idx_16 on INDI_6fee29085f85cdec311fc7b481d9bcc4 (ISR, DRUG_SEQ);
create index idx_17 on INDI_6fee29085f85cdec311fc7b481d9bcc4 (INDI_PT);

create index idx_18 on OUTC_1e78f9eb4d6d73dcf35d1ff15dbf82fa (PRIMARYID, CASEID);

create index idx_19 on OUTC_7f30f68f7e2b9dfa7c1919e268474497 (PRIMARYID, CASEID);

create index idx_20 on OUTC_92c661a576a4147333c7b31658c57c83 (ISR);

create index idx_21 on REAC_0e87ccc2269d8b7520c61447b7f66b78 (PRIMARYID, CASEID);
create index idx_22 on REAC_0e87ccc2269d8b7520c61447b7f66b78 (PT);

create index idx_23 on REAC_4c4dc339a3c36756584f1f13603f2efe (PRIMARYID, CASEID);
create index idx_24 on REAC_4c4dc339a3c36756584f1f13603f2efe (PT);

create index idx_25 on REAC_6829bf881a81dc9a1d13850c0f6e5694 (ISR);
create index idx_26 on REAC_6829bf881a81dc9a1d13850c0f6e5694 (PT);

create index idx_27 on RPSR_0b3fe8aa30036561fb73d20ef4c50576 (ISR);

create index idx_28 on RPSR_6651b0f2706f8f74918a4b76b0905a97 (PRIMARYID, CASEID);

create index idx_29 on THER_15ecf4cf93b4fb27078b6150b5624fb0 (ISR, DRUG_SEQ);

create index idx_30 on THER_6c8361911e2c5e50baf5f656faa4adc9 (PRIMARYID, CASEID, DSG_DRUG_SEQ);
