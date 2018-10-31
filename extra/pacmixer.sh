#!/bin/bash -e

. pkgupdate

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/KenjiTakahashi/pacmixer/releases | grep .*[0-9].*tar.gz | sed 's/.*\(\/.*[0-9].*gz\).*/\1/' | sed 's/\///;s/.tar.gz//' | sort -V | tail -n1)

result

exit 0
