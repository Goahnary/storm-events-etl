#!/bin/bash

files="StormEvents_details-ftp_v1.0_d2018_c20200819.csv
StormEvents_fatalities-ftp_v1.0_d2018_c20200819.csv
StormEvents_locations-ftp_v1.0_d2018_c20200819.csv
"

for f in $files; do
	echo "Filename: $f"
	head -n 1 $f > "$f.badlines.csv"
	grep --color='auto' -P "[^\x00-\x7F]" $f >> "$f.badlines.csv"
	grep --color='auto' -P -n "[^\x00-\x7F]" $f | cut -f1 -d: > "$f.badlinenumbers"

done
