#!/bin/bash -e

. pkgupdate

rubyname=$(echo $(basename $0))
rubyname=${rubyname#*-}
rubyname=${rubyname%.*}

source $(scratch path ruby-$rubyname)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://rubygems.org/gems/$rubyname | grep $rubyname-[0-9.]*gem | cut -d / -f3 | sed "s/\.gem.*//;s/$rubyname-//")

result

exit 0
