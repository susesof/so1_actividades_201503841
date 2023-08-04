#!/bin/bash

# Leer la variable GITHUB_USER
GITHUB_USER="susesof"

# Consultar la API de GitHub y obtener información
API_RESPONSE=$(curl -s "https://api.github.com/users/$GITHUB_USER")
USER_NAME=$(echo "$API_RESPONSE" | jq -r '.name')
USER_ID=$(echo "$API_RESPONSE" | jq -r '.id')
CREATED_AT=$(echo "$API_RESPONSE" | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $USER_NAME. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear un log file en /tmp/<fecha>/saludos.log
LOG_DIR="/tmp/$(date +\%Y-\%m-\%d)"
LOG_FILE="$LOG_DIR/saludos.log"

mkdir -p "$LOG_DIR"
echo "Hola $USER_NAME. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"
