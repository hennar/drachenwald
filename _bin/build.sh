#!/bin/bash

# Omitted:
# "https://scripts.drachenwald.sca.org/json/groups-special.json"
declare -a ScriptsDocuments=(
  "archery-marshals"
  "archery-progression"
  "archery-ranks"
  "fullcalendar"
)

declare -a DisDocuments=(
  "academyofdefense"
  "branches"
  "chartered_peerage"
  "courtreports"
  "golden-egg"
  "laurelroster"
  "navy"
  "newsletters"
  "pastevents"
  "regnum-groups"
  "regnum-officers"
  "regnum-officers-box"
  "roles"
  "thisisdrachenwald"
  "thisisdrachenwald_feedlist"
)

for word in "${DisDocuments[@]}"; do
  curl --silent -k -o _data/${word}.json "https://dis.drachenwald.sca.org/data/${word}.json"
done
