#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://www.bleachbit.org/download/source | grep tar.bz2 | sed 's/.*\(bleachbit-[0-9].*bz2\).*/\1/' | sed 's/bleachbit-//;s/.tar.bz2//')

result

exit 0
