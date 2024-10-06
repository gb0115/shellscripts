#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
function lookup_and_record(){
meaning=$(curl -X GET --silent https://dictionaryapi.com/api/v3/references/collegiate/json/$1?key=394ccb00-a0da-4820-bbd6-ca9e7136279b | jq -r '.[0].shortdef[]')
echo "$meaning"
sed -i "1i ### $1 $meaning $merriam_lookup_words"
}
lookup_and_record "$1"

