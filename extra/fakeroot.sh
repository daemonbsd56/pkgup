#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - http://ftp.debian.org/debian/pool/main/f/fakeroot | grep tar.xz | sed 's/.*\(fakeroot.*xz\).*/\1/' | grep orig | sed 's/fakeroot_//;s/.orig.tar.xz//')

result

exit 0
