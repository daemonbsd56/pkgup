#!/bin/bash -e

. pkgupdate

pname=$(basename $0)
pname=${pname%.*}

source $(scratch path $pname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://sourceforge.net/projects/cdw/files/cdw/ | grep show-for-medium | sed 's/class="no-recent-downloads folder" //' | cut -d '"' -f4 | grep cdw | cut -d / -f6 | sed 's/%20/-/;s/cdw-//' | sort -V | tail -n1)

result

exit 0
