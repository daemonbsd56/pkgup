#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/Rolinh/dfc/releases | grep tar.gz | grep archive | cut -d / -f5 | sed 's/^v//;s/.tar.gz.*//' | sort -V | tail -n1)

result

exit 0
