#!/bin/bash

DIR=$(dirname "$0")

DATA=$(date +%Y-%m-%d)
echo $DATA

tar -czf backup-$DATA.tar.gz .

echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup criado: backup-$DATA.tar.gz" >> "$DIR/../logs/execucao.log"
echo "Backup criado: backup-$DATA.tar.gz"