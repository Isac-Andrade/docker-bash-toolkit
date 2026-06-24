#!/bin/bash

DIR=$(dirname "$0")

DIAS=${1:-365}

find . -name "*.log" -mtime +$DIAS -delete

echo "$(date '+%Y-%m-%d %H:%M:%S') - Logs com mais de $DIAS dias foram removidos" >> "$DIR/../logs/execucao.log"
echo "Logs com mais de $DIAS dias foram removidos"
