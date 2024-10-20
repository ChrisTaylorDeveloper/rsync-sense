#!/bin/bash

echo Exclude the dir or file \'cc\' but only when its inside \'/src/foo\'

rm -rf ~/rsync-sense

tree src

rsync -azhP --protect-args --quiet \
--exclude /src/foo/cc \
./src ~/rsync-sense

echo
tree ~/rsync-sense/src
