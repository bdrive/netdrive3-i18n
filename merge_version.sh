#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Please specify directory containing po files of new version."
    exit 1
fi

new_version_repository=$1

for pofile in *.po; do
    echo msgcat $pofile $new_version_repository/$pofile -o $pofile
    msgcat $pofile $new_version_repository/$pofile -o $pofile
done

