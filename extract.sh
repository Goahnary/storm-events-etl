#!/bin/bash

files="StormEvents_details-ftp_v1.0_d2018_c20200819.csv.gz
StormEvents_fatalities-ftp_v1.0_d2018_c20200819.csv.gz
StormEvents_locations-ftp_v1.0_d2018_c20200819.csv.gz
"

for f in $files; do
	echo "Filename: $f"
	wget "https://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles/$f" &&
	gunzip $f
done
