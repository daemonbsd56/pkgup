#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

majversion=$(wget -qO - https://download.gnome.org/sources/cantarell-fonts/ | grep DIR | cut -d '"' -f8 | sed 's/\///' | sort -V | tail -n1)
upversion=$(wget -qO - https://download.gnome.org/sources/cantarell-fonts/$majversion | grep tar.xz | cut -d '"' -f8 | sed 's/cantarell-fonts-//;s/.tar.xz//' |sort -V | tail -n1)

result

exit 0
