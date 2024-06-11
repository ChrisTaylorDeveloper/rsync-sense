#!/bin/bash

echo Exclude any dir or file with the letter a in the name

rm -rf ~/rsync-sense

tree src

rsync -azhP --protect-args --quiet \
--exclude '*a*' \
./src ~/rsync-sense

echo
tree ~/rsync-sense/src
