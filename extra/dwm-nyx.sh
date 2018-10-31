#!/bin/bash -e

. pkgupdate

source $(scratch path dwm-nyx)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://dl.suckless.org/dwm/ | grep dwm | cut -d '"' -f2 | tail -n1 | sed 's/dwm-//' | sed 's/.tar.gz//')

result

exit 0
