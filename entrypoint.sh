#!/bin/bash

# IFS=','

read -r GZIP <<< "${1:-1}"
read -r GZIP_OPTIONS <<< "${2:--k -f --best *.js}"
read -r BROTLI <<<"${3:-1}"
read -r BROTLI_OPTIONS <<< "${4:--k -f -q 11 *.js}"
echo GZIP
echo GZIP_OPTIONS
if [ "$((GZIP))" -eq 1 ]; then
    echo "gzip ${GZIP_OPTIONS}"|sh
fi
if [ "$((BROTLI))" -eq 1 ]; then
    echo "brotli ${BROTLI_OPTIONS}"|sh
fi

