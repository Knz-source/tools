#!/bin/bash
# Knz-Source - 17:53 - 12/09/2023


if [ "$#" -ne 4 ]; then
    echo "Uso: $0 <URL_BASE> <ID_inicial> <ID_final> <Cookie [if exists]>"
    exit 1
fi

url_base=$1
inicio=$2
fim=$3
cookie=$4


for ((i=$inicio; i<=$fim; i++)); do
    url="$url_base$i"
    nome_arquivo="email_log_$i.csv"
    wget --header "Cookie: $4" -O "$nome_arquivo" "$url"
done

echo "Downloads concluídos."



