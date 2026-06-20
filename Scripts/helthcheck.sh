#!/bin/bash

STATUS=$(curl -sI https://github.com | grep "HTTP" | awk '{print $2}')
echo $STATUS

if [ "$STATUS" -eq 200 ]; then
  echo "OK: Seu site está online $STATUS"

else
  echo "ERROR: Seu site está offline $STATUS"

fi