#!/bin/bash

echo $HELLO_WORLD
#pip3 install -r _server_scripts/requirements.txt
#curl --silent -k -o _data/groups/grouplist.json "https://scripts.drachenwald.sca.org/json/regnum-groups.json"
#curl --silent -k -o _data/groups/officerlist.json "https://scripts.drachenwald.sca.org/json/regnum-officers.json"
curl --silent -k -o _data/archery-ranks.json "https://scripts.drachenwald.sca.org/json/archery-ranks.json"
curl --silent -k -o _data/archery-progression.json "https://scripts.drachenwald.sca.org/json/archery-progression.json"
curl --silent -k -o _data/archery-marshals.json "https://scripts.drachenwald.sca.org/json/archery-marshals.json"
curl --silent -k -o _data/fullcalendar.json "https://scripts.drachenwald.sca.org/json/fullcalendar.json"
#curl --silent -k -o _data/groups/grouplist.json "https://scripts.drachenwald.sca.org/json/regnum-groups.json"
#curl --silent -k -o _data/groups/officerlist.json "https://scripts.drachenwald.sca.org/json/regnum-officers.json"
curl --silent -k -o _data/archery-ranks.json "https://scripts.drachenwald.sca.org/json/archery-ranks.json"
curl --silent -k -o _data/archery-progression.json "https://scripts.drachenwald.sca.org/json/archery-progression.json"
curl --silent -k -o _data/archery-marshals.json "https://scripts.drachenwald.sca.org/json/archery-marshals.json"
curl --silent -k -o _data/fullcalendar.json "https://scripts.drachenwald.sca.org/json/fullcalendar.json"
#curl --silent -k -o _data/groups/groups-special.json "https://scripts.drachenwald.sca.org/json/groups-special.json"
#python3 _thisisdrachenwald/fetch_rss.py
#python3 _thisisdrachenwald/create_rss.py
#mkdir dis
#cp _data/branches.json dis 
#cp _data/chartered_peerage.json dis
#cp _data/roles.json dis
#cp _data/courtreports.json dis
#cp _data/*json dis

curl --silent -k -o _data/thisisdrachenwald.json https://dis.drachenwald.sca.org/data/thisisdrachenwald.json
curl --silent -k -o _data/branches.json https://dis.drachenwald.sca.org/data/branches.json
curl --silent -k -o _data/roles.json https://dis.drachenwald.sca.org/data/roles.json
curl --silent -k -o _data/chartered_peerage.json https://dis.drachenwald.sca.org/data/chartered_peerage.json
curl --silent -k -o _data/regnum-officers-box.json https://dis.drachenwald.sca.org/data/regnum-officers-box.json
curl --silent -k -o _data/regnum-groups.json https://dis.drachenwald.sca.org/data/regnum-groups.json
curl --silent -k -o _data/newsletters.json https://dis.drachenwald.sca.org/data/newsletters.json
curl --silent -k -o _data/regnum-officers.json https://dis.drachenwald.sca.org/data/regnum-officers.json
curl --silent -k -o _data/thisisdrachenwald_feedlist.yaml https://dis.drachenwald.sca.org/data/thisisdrachenwald_feedlist.yaml
curl --silent -k -o _data/courtreports.json  https://dis.drachenwald.sca.org/data/courtreports.json
curl --silent -k -o _data/laurelroster.json  https://dis.drachenwald.sca.org/data/laurelroster.json
curl --silent -k -o _data/navy.json  https://dis.drachenwald.sca.org/data/navy.json
curl --silent -k -o _data/pastevents.json  https://dis.drachenwald.sca.org/data/pastevents.json
curl --silent -k -o _data/academyofdefense.json  https://dis.drachenwald.sca.org/data/academyofdefense.json
curl --silent -k -o _data/golden-egg.json  https://dis.drachenwald.sca.org/data/golden-egg.json
curl --silent -k -o _data/archery-marshal.json https://dis.drachenwald.sca.org/data/archery_marshal.json
#curl --silent -k -o _data/groups/groups-special.json "https://scripts.drachenwald.sca.org/json/groups-special.json"

