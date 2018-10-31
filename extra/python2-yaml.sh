#!/bin/bash -e

. pkgupdate

pyname=$(echo $(basename $0))
pyname=${pyname#*-}
pyname=${pyname%.*}

source $(scratch path python2-$pyname)/spkgbuild

pyname=PyYAML

echo -ne "$name ... "

upversion=$(wget -qO - https://pyyaml.org/download/pyyaml/ | grep .tar.gz | cut -d '"' -f2 | tail -n1 | sed 's/PyYAML-//;s/.tar.gz//')

result

exit 0
