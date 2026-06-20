#!/bin/bash

DIAS=7

find . -name "*.log" -mtime +$DIAS -delete
echo "Logs com mais de $DIAS dias foram removidos"
