drop view if exists outc;
create view outc as
	select
		primaryid,
		outc_cod
	from outc_1e78f9eb4d6d73dcf35d1ff15dbf82fa
	union all
	select
		primaryid,
		outc_code as outc_cod
	from outc_7f30f68f7e2b9dfa7c1919e268474497
	union all
	select
		isr as primaryid,
		outc_cod
	from outc_92c661a576a4147333c7b31658c57c83
;
