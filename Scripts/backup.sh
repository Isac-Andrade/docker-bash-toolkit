#!/bin/bash

DATA=$(date +%Y-%m-%d)
echo $DATA

tar -czf backup-$DATA.tar.gz Docker-bash-toolkit/
echo "Backup criado: backup-$DATA.tar.gz"