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
      ./Scripts/disk-monitor.sh
      ;;
    2)
      echo "rodando site..."
      ./Scripts/helthcheck.sh
      ;;
    3)
      echo "executando backup"
      ./Scripts/backup.sh
      ;;
    4)
      echo "Lipando logs"
      ./Scripts/log-clean.sh
      ;;
esac
