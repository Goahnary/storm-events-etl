#!/bin/bash

files="StormEvents_details-ftp_v1.0_d2018_c20200819.csv
StormEvents_fatalities-ftp_v1.0_d2018_c20200819.csv
StormEvents_locations-ftp_v1.0_d2018_c20200819.csv
"



for f in $files; do
	sedRemovalString="`sed ':a;N;$!ba;s/\n/d;/g' "${f}.badlinenumbers"`d"
	if [[ ${#sedRemovalString} > 2 ]]; then # If removal string doesn't have more than the d we appended then
		echo $f																#	it is empty. If we don't catch this it will delete all the data.
		echo $sedRemovalString
		sed -i.bak -e "$sedRemovalString" $f
	fi
done
