
function main () {
	DRUGPATTERN=$1
	read -r -d '' SQL <<-EOM
	select
		a.primaryid,
		a.caseid,
		a.age,
		b.drugname
	from demo a
	inner join drug b
	on a.primaryid = b.primaryid
	where b.drugname in (select drugname from d_drug where drugname regexp '$DRUGPATTERN')
	EOM

	sqlite3 -csv -header faers.db "$SQL"
}

if [ "$#" -ne 1 ]; then
	echo "Usage: query.sh <drug_regex>"
	exit 1
fi

main $1
