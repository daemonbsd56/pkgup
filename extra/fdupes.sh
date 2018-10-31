#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/adrianlopezroche/fdupes/releases | grep tar.gz | grep archive | sed 's/.*\(archive.*gz\).*/\1/' | sed 's/[^0-9]*//;s/\.tar\.gz//;/1.51/d' | sort -V | tail -n1)

result

exit 0
