#!/bin/bash
su postgres - << EOF
psql -c 'create database phenomenon'
psql phenomenon < phenomenon.sql
psql -At -d phenomenon <<EQQ
COPY (select date,source.name as source, description, loc.city, loc.district as state,loc.country,loc.water,loc.latitude,loc.longitude,word_count from api.report inner join api.source as source on source = source.id inner join api.location as loc on location = loc.id order by date desc) to '/tmp/uadb.csv' csv header;
EQQ
EOF
