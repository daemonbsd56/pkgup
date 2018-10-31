#!/bin/bash -e

. pkgupdate

source $(scratch path autoconf-archive)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://ftpmirror.gnu.org/autoconf-archive | grep autoconf-archive | grep tar.xz | sed 's/^.*\(autoconf-archive.*tar.xz\).*$/\1/' | sed 's/autoconf-archive-//;s/.tar.xz//' | sort -V | uniq | tail -n1)

result

exit 0
