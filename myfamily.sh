#!/bin/sh
curl -s 'https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json' | jq ".[] | select ( .id==$HERO_ID ) " | grep 'relatives' | cut -d'"' -f4