#!/bin/bash

# Verificar si se ha pasado un argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <número de carpetas>"
  exit 1
fi

# Número de carpetas a crear
n=$1

# Inicializar variables
current_dir="."
folder_name="a"

# Crear carpetas con nombres cada vez más largos
for ((i=1; i<=n; i++)); do
  current_dir="$current_dir/$folder_name"
  mkdir -p "$current_dir"
  folder_name="${folder_name}a"
done

# Calcular la longitud total de todas las carpetas
length_total=${#current_dir}

# Crear el archivo X.txt al final del todo
touch "$current_dir/${length_total}.txt"

echo "Carpetas creadas hasta: $current_dir"
echo "Archivo creado: $current_dir/${length_total}.txt"

