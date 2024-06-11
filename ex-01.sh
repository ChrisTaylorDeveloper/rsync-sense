#!/bin/bash

echo Exclude the dir or file cc, anywhere it appears

rm -rf ~/rsync-sense

tree src

rsync -azhP --protect-args --quiet \
--exclude cc \
./src ~/rsync-sense

echo
tree ~/rsync-sense/src
