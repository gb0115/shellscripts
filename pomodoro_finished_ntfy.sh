#!/usr/bin/env bash
echo "What is done?"
read DONE
echo "How many times?"
read TIMES
curl -H "X-Title: $DONEが終了しました" -d "$TIMES回目" ntfy.sh/pracAPI
