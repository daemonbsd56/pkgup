#!/bin/bash -e

. pkgupdate

pyname=$(echo $(basename $0))
pyname=${pyname#*-}
pyname=${pyname%.*}

source $(scratch path python3-$pyname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://pypi.org/project/$pyname/ | grep $pyname | grep release__card | cut -d / -f4 | head -n1)

result

exit 0
