#!/bin/bash

echo "=== Rodando Tests ==="

VERDE='\033[0;32m'
VERMELHO='\033[0;31m'
SEM_COR='\033[0m'

# Teste 1: disk-monitor
RESULTADO=$(./Scripts/disk-monitor.sh)
if [ -n "$RESULTADO" ]; then
    echo -e "${VERDE}PASS: disk-monitor${SEM_COR}"
else
    echo -e "${VERMELHO}FAIL: disk-monitor${SEM_COR}"
fi

# Teste 2: helthcheck
RESULTADO=$(./Scripts/helthcheck.sh)
if [ -n "$RESULTADO" ]; then
    echo -e "${VERDE}PASS: helthcheck${SEM_COR}"
else
    echo -e "${VERMELHO}FAIL: helthcheck${SEM_COR}"
fi

# Teste 3: log-clean
RESULTADO=$(./Scripts/log-clean.sh)
if [ -n "$RESULTADO" ]; then
    echo -e "${VERDE}PASS: log-clean${SEM_COR}"
else
    echo -e "${VERMELHO}FAIL: log-clean${SEM_COR}"
fi

# Teste 4: backup
RESULTADO=$(./Scripts/backup.sh)
if [ -n "$RESULTADO" ]; then
    echo  -e "${VERDE}PASS: backup${SEM_COR}"
else
    echo -e "${VERMELHO}FAIL: backup${SEM_COR}"
fi