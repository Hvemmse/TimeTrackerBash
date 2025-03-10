#!/bin/bash

# Kontroller input
if [[ $# -ne 3 ]]; then
  echo "Brug: $0 <HH:MM> <HH:MM> <projektnavn>"
  exit 1
fi

start_tid="$1"
slut_tid="$2"
projektnavn="$3"

# Valider tidsformat (HH:MM)
if ! [[ $start_tid =~ ^[0-9]{2}:[0-9]{2}$ && $slut_tid =~ ^[0-9]{2}:[0-9]{2}$ ]]; then
  echo "Fejl: Tiderne skal være i formatet HH:MM."
  exit 1
fi

# Konverter tider til sekunder siden midnat
start_sek=$(date -u -d "$start_tid" +%s 2>/dev/null)
slut_sek=$(date -u -d "$slut_tid" +%s 2>/dev/null)

# Håndter fejl i `date`
if [[ -z $start_sek || -z $slut_sek ]]; then
  echo "Fejl: Kunne ikke konvertere tidspunkterne. Tjek formatet HH:MM."
  exit 1
fi

# Beregn tidsforskel i minutter
forskel_min=$(( (slut_sek - start_sek) / 60 ))

# Log resultat
echo "$(date '+%Y-%m-%d %H:%M:%S') | $projektnavn | $start_tid - $slut_tid | $forskel_min minutter" >> dagen.log

# Udskriv resultat
echo "Tidsforskel mellem $start_tid og $slut_tid: $forskel_min minutter."