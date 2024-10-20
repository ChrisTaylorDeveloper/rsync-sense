#!/bin/bash

# cc can be an empty dir, a file or a non-empty dir.

rm -rf src

mkdir -p src/bar/cc/
mkdir -p src/bar/foo/cc/
mkdir -p src/foo/bar/cc/
mkdir -p src/foo/bar/foo/cc/
mkdir -p src/foo/cc/
mkdir -p src/spam/foo

touch src/bar/cc/a.log
touch src/bar/foo/cc/a.log
touch src/foo/bar/cc/b.log
touch src/foo/cc/d.log
touch src/spam/foo/cc

tree src
