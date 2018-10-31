#!/bin/bash -e

. pkgupdate

source $(scratch path deadbeef)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://sourceforge.net/projects/deadbeef/files/ | grep deadbeef | grep files_name_h | grep -v static | grep download | head -n1 | cut -d / -f7 | sed 's/deadbeef-//;s/.tar.bz2//')

result

exit 0
