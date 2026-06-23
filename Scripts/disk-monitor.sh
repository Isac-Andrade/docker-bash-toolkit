#!/bin/bash

USO=$(df -h | grep "/$" | awk '{print $5}'| tr -d '%')

LIMITE=${1:-80}

if [ "$USO" -gt "$LIMITE" ] ; then
  echo "ALERTA: disco em $USO% de uso"

else
  echo "OK: disco em $USO% de uso"

fi
