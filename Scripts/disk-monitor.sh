#!/bin/bash

USO=$(df -h | grep "/$" | awk '{print $5}'| tr -d '%')


if [ "$USO" -gt 80 ] ; then
  echo "ALERTA: disco em $USO% de uso"

else
  echo "OK: dico em $USO% de uso"

fi
