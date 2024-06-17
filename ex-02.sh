#!/bin/bash

echo Exclude the dir or file cc but only when its inside foo

rm -rf ~/rsync-sense

tree src

rsync -azhP --protect-args --quiet \
--exclude foo/cc \
./src ~/rsync-sense

echo
tree ~/rsync-sense/src
