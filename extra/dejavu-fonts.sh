#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://sourceforge.net/projects/dejavu/files/dejavu/ | grep show-for-medium | grep dejavu | sed 's/.*\(projects.*timeline\).*/\1/' | cut -d '/' -f5 | sort -V | tail -n1)

result

exit 0
