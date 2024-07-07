#!/bin/bash

n=$1

current_dir="."
folder_name="$2"

for ((i=1; i<=n; i++)); do
  current_dir="$current_dir/$folder_name"
  mkdir -p "$current_dir"
  folder_name="${folder_name}$2"
done

length_total=${#current_dir}

touch "$current_dir/${length_total}.txt"

echo "Carpetas creadas hasta: $current_dir"
echo "Archivo creado: $current_dir/${length_total}.txt"

