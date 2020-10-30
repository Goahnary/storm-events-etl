#!/bin/bash

files="StormEvents_details-ftp_v1.0_d2018_c20200819.csv
StormEvents_fatalities-ftp_v1.0_d2018_c20200819.csv
StormEvents_locations-ftp_v1.0_d2018_c20200819.csv
"



for f in $files; do
		sed -i.preformatted -e 's|["]|\\"|g' $f
done
