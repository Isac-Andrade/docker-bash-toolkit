#!/bin/bash

DIAS=${1:-365}

find . -name "*.log" -mtime +$DIAS -delete

echo "Logs com mais de $DIAS dias foram removidos"
