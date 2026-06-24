#!/bin/bash

DIR=$(dirname "$0")

USO=$(df -h | grep "/$" | awk '{print $5}'| tr -d '%')

LIMITE=${1:-80}

if [ "$USO" -gt "$LIMITE" ]; then
    echo "ALERTA: disco em $USO% de uso"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - ALERTA: disco em $USO% de uso" >> "$DIR/../logs/execucao.log"
else
    echo "OK: disco em $USO% de uso"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - OK: disco em $USO% de uso" >> "$DIR/../logs/execucao.log"
fi