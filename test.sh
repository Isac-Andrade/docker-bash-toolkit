#!/bin/bash

echo "=== Rodando Tests ==="

# Teste 1: disk-monitor
RESULTADO=$(./Scripts/disk-monitor.sh)
if [ -n "$RESULTADO" ]; then
    echo "PASS: disk-monitor"
else
    echo "FAIL: disk-monitor"
fi

# Teste 2: helthcheck
RESULTADO=$(./Scripts/helthcheck.sh)
if [ -n "$RESULTADO" ]; then
    echo "PASS: helthcheck"
else
    echo "FAIL: helthcheck"
fi

# Teste 3: log-clean
RESULTADO=$(./Scripts/log-clean.sh)
if [ -n "$RESULTADO" ]; then
    echo "PASS: log-clean"
else
    echo "FAIL: log-clean"
fi

# Teste 4: backup
RESULTADO=$(./Scripts/backup.sh)
if [ -n "$RESULTADO" ]; then
    echo "PASS: backup"
else
    echo "FAIL: backup"
fi