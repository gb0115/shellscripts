#!/usr/bin/env bash
source .env
function thesaurus(){
curl -X GET --silent https://dictionaryapi.com/api/v3/references/thesaurus/json/$1?key=$key_thesaurus | jq '..|.wd? //empty'
}
thesaurus "$1"
