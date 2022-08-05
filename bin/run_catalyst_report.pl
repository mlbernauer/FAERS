#!/usr/bin/perl

use Getopt::Std;

my %opts;
my $dbpath = '/home/mlbernauer/faers/data/sqlite/faers.db';
getopts('h',\%opts);

my $usage = <<EOM;
usage: run_catalyst_report [-h] QUERY

Run catalyst report using QUERY

parameters:
  -h    show this help message
  QUERY comma separated drugnames to search
EOM

die $usage unless @ARGV == 1;
my $query = join "','", split /,/, uc $ARGV[0];

my $sql = <<EOM;
select * from drug where drugname in ('$query');
EOM

system "sqlite3", $dbpath, $sql; 
