#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/lz4/lz4/releases | grep tar.gz | sed 's/^.*\(\/.*gz\).*$/\1/' | grep [0-9] | sed 's/\///g' | sed 's/^v//;s/.tar.gz//' | grep -v ^r | sort -V | tail -n1)

result

exit 0
