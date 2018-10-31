#!/bin/bash -e

. pkgupdate

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/gnustep/tools-make/releases | grep make-[0-9].*gz | sed 's/.*\(make-[0-9].*gz\).*/\1/' | sed 's/make-//;s/.tar.gz//;s/_/./g' | sort -V | tail -n1)

result

exit 0
