#!/bin/bash

# Directorio a analizar (por defecto el actual si no se proporciona)
DIRECTORIO="${1:-.}"

# Archivo de salida
ARCHIVO_SALIDA="folders.txt"

# Limpiar el archivo si existe
> "$ARCHIVO_SALIDA"

# Leer solo carpetas y guardarlas en el archivo
for carpeta in "$DIRECTORIO"/*/; do
    [ -d "$carpeta" ] && echo "$(basename "$carpeta")" >> "$ARCHIVO_SALIDA"
done

echo "Lista de carpetas guardada en $ARCHIVO_SALIDA"
