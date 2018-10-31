#!/bin/bash -e

. pkgupdate

rubyname=$(echo $(basename $0))
rubyname=${rubyname#*-}
rubyname=${rubyname%.*}

source $(scratch path ruby-$rubyname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/sass/sass/releases | grep .tar.gz | grep archive | cut -d '"' -f4 | cut -d '/' -f5 | sed 's/.tar.gz//' | sort -V | tail -n1)

result

exit 0
