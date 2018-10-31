#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/FortAwesome/Font-Awesome/releases | grep Font-Awesome/archive/[0-9.]*tar | cut -d '"' -f2 | cut -d / -f5 | sed 's/.tar.gz//' | head -n1)

result

exit 0
