#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/dunst-project/dunst/releases | grep tar.gz | grep archive | sed 's/.*\(dunst.*\.tar\.gz\).*/\1/' | sed 's/.*v//;s/.tar.*//' | sort -V | tail -n1)

result

exit 0
