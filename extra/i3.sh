#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - http://i3wm.org/downloads/ | grep i3-[0-9].* | sed 's/.*\(i3.*bz2\).*/\1/' | sed 's/i3-//;s/.tar.bz2//' | sort -V | tail -n1)

result

exit 0
