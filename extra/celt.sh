#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://downloads.us.xiph.org/releases/celt | grep tar.gz | cut -d '"' -f8 | sed "s/celt-//;s/.tar.gz//" | sort -V | tail -n1)

result

exit 0
