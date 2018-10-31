#!/bin/bash -e

. pkgupdate

rubyname=${name#*-}
rubyname=${rubyname%.*}

echo -ne "$name ... "

upversion=$(wget -qO - https://rubygems.org/gems/$rubyname | grep $rubyname-[0-9].*gem | sed "s/.*\($rubyname-[0-9].*gem\).*/\1/" | sed "s/$rubyname-//;s/.gem//" | sort -V | tail -n1)

result

exit 0
