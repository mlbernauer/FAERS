drop view if exists reac;
create view reac as
	select
		primaryid,
		pt
	from reac_0e87ccc2269d8b7520c61447b7f66b78
	union all
	select
		primaryid,
		pt
	from reac_4c4dc339a3c36756584f1f13603f2efe
	union all
	select
		isr as primaryid,
		pt
	from reac_6829bf881a81dc9a1d13850c0f6e5694
;
