# TimeTrackerBash
a simple time tracker for the commandline


#!/bin/bash

# Kontroller, om der er tre argumenter
if [ "$#" -ne 3 ]; then
  echo "Brug: $0 <start_tid> <slut_tid> <projektnavn>"
  exit 1
fi

# Gem argumenterne i variabler
start_tid="$1"
slut_tid="$2"
projektnavn="$3"

# Konverter starttidspunktet og sluttidspunktet til sekunder siden midnat
start_sekunder=$(date -d "$start_tid" +%s)
slut_sekunder=$(date -d "$slut_tid" +%s)

# Beregn tidsforskellen i sekunder
forskel_sekunder=$((slut_sekunder - start_sekunder))

# Konverter tidsforskellen til minutter
forskel_minutter=$((forskel_sekunder / 60))

# Skriv tidsforskellen og tidspunkterne til en logfil
echo "Starttid: $start_tid - Sluttid: $slut_tid - Projekt: $projektnavn - Tidsforskel: $forskel_minutter minutter" >> dagen.log

# Vis tidsforskellen
echo "Tidsforskel mellem $start_tid og $slut_tid er $forskel_minutter minutter."
