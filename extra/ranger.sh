#!/bin/bash -e

. pkgupdate

source $(scratch path ranger)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - http://ranger.github.io/download.html | grep .tar.gz | grep ranger-[0-9.]*tar.gz | cut -d '"' -f2 | head -n1 | sed 's/ranger-//;s/.tar.gz//')

result

exit 0
