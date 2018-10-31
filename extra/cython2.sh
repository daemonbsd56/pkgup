#!/bin/bash -e

. pkgupdate

pyname=$(echo $(basename $0))
pyname=${pyname%.*}

source $(scratch path $pyname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://pypi.org/project/Cython/ | grep Cython | grep release__card | cut -d / -f4 | head -n1)

result

exit 0
