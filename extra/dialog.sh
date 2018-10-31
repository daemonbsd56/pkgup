#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wgetlist | sed 's/dialog-//;s/.tgz//;s/-/_/' | sort -V | tail -n1)

result

exit 0
