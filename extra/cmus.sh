#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/cmus/cmus/releases | grep tar.gz | grep archive | sed 's/.*\(cmus.*tar\.gz\).*/\1/' | cut -d / -f3 | grep -v rc | sed 's/^v//;s/.tar.gz//' | sort -V | tail -n1)

result

exit 0
