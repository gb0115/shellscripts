#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
echo "title:"
read title
function write_jounal(){
  today=$(date +%Y-%m-%d\ \(%a\)\ %H:%M)
sudo sed -i "1i\###\ $today\ **$title**\n$1" $journal_text_path
cp $journal_text_path $journal_md_path
}
write_jounal "$1"


