#!/bin/bash

DIR=$(dirname "$0")

STATUS=$(curl -sI https://github.com | grep "HTTP" | awk '{print $2}')
echo $STATUS

if [ "$STATUS" -eq 200 ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') - OK: Seu site está online $STATUS" >> "$DIR/../logs/execucao.log"
  echo "OK: Seu site está online $STATUS"

else
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: Seu site está offline $STATUS" >> "$DIR/../logs/execucao.log"
  echo "ERROR: Seu site está offline $STATUS"

fi