drop table if exists rpsr;
create table rpsr as
	select
		isr as PRIMARYID,
		rpsr_cod
	from rpsr_0b3fe8aa30036561fb73d20ef4c50576
	union all
	select
		primaryid,
		rpsr_cod
	from rpsr_6651b0f2706f8f74918a4b76b0905a97
;
create index rpsr_idx01 on rpsr (primaryid);
create index rpsr_idx02 on rpsr (rpsr_cod);
