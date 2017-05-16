create index demo_idx on demo(primaryid, caseid, caseversion);
create index drug_idx on drug(primaryid, caseid, drugname, prod_ai);
create index indi_idx on indi(primaryid, caseid);
create index outc_idx on outc(primaryid, caseid);
create index reac_idx on reac(primaryid, caseid);
create index rpsr_idx on rpsr(primaryid, caseid);
create index ther_idx on ther(primaryid, caseid);
