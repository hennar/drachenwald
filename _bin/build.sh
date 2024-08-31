#!/bin/bash

# Omitted:
# "https://scripts.drachenwald.sca.org/json/groups-special.json"
declare -a ScriptsDocuments=(
  "archery-progression"
  "archery-ranks"
  "fullcalendar"
)


for word in "${ScriptsDocuments[@]}" ; do
  curl --silent -k -o _data/${word}.json "https://scripts.drachenwald.sca.org/json/${word}.json"
done

declare -a DisDocuments=(
  "academyofdefense"
  "archery-marshals"
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
