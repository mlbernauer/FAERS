create table demo (
primaryid varchar,
caseid varchar,
caseversion varchar,
i_f_code varchar,
event_dt varchar,
mfr_dt varchar,
init_fda_dt varchar,
fda_dt varchar,
rept_cod varchar,
auth_num varchar,
mfr_num varchar,
mfr_sndr varchar,
lit_ref varchar,
age varchar,
age_cod varchar,
age_grp varchar,
sex varchar,
e_sub varchar,
wt varchar,
wt_cod varchar,
rept_dt varchar,
to_mfr varchar,
occp_cod varchar,
reporter_country varchar,
occr_country varchar);

create table drug (
primaryid varchar,
caseid varchar,
drug_seq varchar,
role_cod varchar,
drugname varchar,
prod_ai varchar,
val_vbm varchar,
route varchar,
dose_vbm varchar,
cum_dose_chr varchar,
cum_dose_unit varchar,
dechal varchar,
rechal varchar,
lot_num varchar,
exp_dt varchar,
nda_num varchar,
dose_amt varchar,
dose_unit varchar,
dose_form varchar,
dose_freq varchar);

create table indi (
primaryid varchar, 
caseid varchar, 
indi_drug_seq varchar, 
indi_pt varchar);

create table outc ( 
primaryid varchar,
caseid varchar,
outc_cod varchar);

create table reac (
primaryid varchar,
caseid varchar,
pt varchar,
drug_rec_act varchar);

create table rpsr (
primaryid varchar,
caseid varchar,
rpsr_cod varchar);

create table ther (
primaryid varchar,
caseid varchar,
dsg_drug_seq varchar,
start_dt varchar,
end_dt varchar,
dur varchar,
dur_cod varchar);
