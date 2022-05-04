#!/usr/bin/env bash

set -eu

if [ -d ./quarto_binary ]; then
    echo "Error: Existing quarto download detected. Please clean up and try again"
    exit 1
fi

curl -o quarto.tar.gz -L \
    "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" 

mkdir -p ./quarto_binary 

tar -zxvf quarto.tar.gz \
    -C ./quarto_binary \
    --strip-components=1

