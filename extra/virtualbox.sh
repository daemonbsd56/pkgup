#!/bin/bash -e

. pkgupdate

source $(scratch path virtualbox)/spkgbuild

version=$version-$_release

echo -ne "$name ... "

majversion=$(wget -qO - http://download.virtualbox.org/virtualbox/ | cut -d '"' -f2 | sort -V | grep ^[0-9] | sort -V | tail -n1 | sed 's/\///')
upversion=$(wget -qO - http://download.virtualbox.org/virtualbox/$majversion | grep Linux_amd64.run | cut -d '"' -f2 | sed 's/VirtualBox-//;s/-Linux_amd64.run//')

result

exit 0
