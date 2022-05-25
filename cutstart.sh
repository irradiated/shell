#!/bin/bash

shopt -s globstar
for file in ./**; do 
    if [[ -f "$file" ]]; then
        dirname="${file%/*}/"
        basename="${file:${#dirname}}"
        newname="$( echo $basename | awk '{ print substr( $0, 11 ) }' )"
        echo mv "$file" "$newname"
        #remove echo after verifying correct filenames
    fi
done