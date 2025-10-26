#!/usr/bin/env bash

url="https://github.com/MilanSkocic/bibfiles.git"

mkdir -p build/
mkdir -p build/dependencies/

cd build/dependencies/

if [[ ! -d bibfiles/ ]]; then 
    git clone $url; 
    if [[ $?>0 ]]; then 
        echo "The bibtex file for the reference could not be retrieved."; 
    fi
fi

cd ../../

cp -fv build/dependencies/bibfiles/publications.bib ./src/

exit 0;

