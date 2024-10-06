#!/usr/bin/env bash
echo "tell me TITLExxx"
#reading input
read TITLE_
w3mToMd()
{
    if [ -z $1 ]
        then
            echo "enter URL"
            read URL
            echo "URL is ${URL}"
    else 
            URL="$1"
            echo "URL is ${URL}"
    fi
	DATE=`date +%y%m%d`
  TITLE=$(echo ${TITLE_} | sed 's/\s/_/g')
	NAME=${TITLE}'_'${DATE}
	w3m -dump ${URL} >> ${NAME}.md
    echo ${URL} >> ${NAME}.md
	echo "Created file as $NAME"
}

w3mToMd $1
