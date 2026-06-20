#!/bin/bash

echo "1) Monitorar disco"
echo "2) Verificar site"
echo "3) Fazer backup"
echo "4) Limpar logs"


read OPCAO
echo "você escolehu: $OPCAO"


case $OPCAO in
    1)
      echo "rodando disco..."
      ./scripts/disk-monitor.sh
      ;;
    2)
      echo "rodando site..."
      ./scripts/helthcheck.sh
      ;;
    3)
      echo "executando backup"
      ./scripts/backup.sh
      ;;
    4)
      echo "Lipando logs"
      ./scripts/log-clean.sh
      ;;
esac
