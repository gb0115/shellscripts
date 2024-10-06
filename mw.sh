#!/usr/bin/env bash
source .env
function lookup_and_record(){
curl -X GET --silent https://dictionaryapi.com/api/v3/references/collegiate/json/$1?key=$key_mw | jq -r '.[0].shortdef[]'
}
lookup_and_record "$1"

