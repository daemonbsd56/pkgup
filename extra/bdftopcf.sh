#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://www.x.org/pub/individual/app/ | grep bdftopcf-[0-9.] | cut -d '"' -f8 | grep .tar.gz$ | sed "s/bdftopcf-//;s/.tar.gz//" | sort -V | tail -n1)

result

exit 0
