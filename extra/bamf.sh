#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://launchpad.net/bamf/ | grep bamf-[0-9.] | cut -d '"' -f2 | cut -d / -f8 | sed "s/bamf-//;s/.tar.gz//" | sort -V | tail -n1)

result

exit 0
