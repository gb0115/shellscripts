#!/usr/bin/env bash
echo "title:"
        read title
        echo "message:"
        read message
        function ntfy(){
            curl -H "X-Title: $title" -d "$message" ntfy.sh/pracAPI
        }
    ntfy "$1"


