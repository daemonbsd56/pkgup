#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/blueman-project/blueman/releases | grep blueman-[0-9.] | grep releases | cut -d '"' -f2 | cut -d / -f7 | grep tar.xz | sed "s/blueman-//;s/.tar.xz//" | grep -v alpha | sort -V | tail -n1)

result

exit 0
