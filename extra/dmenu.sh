#!/bin/bash -e

. pkgupdate

echo -ne "$name ... "

upversion=$(wget -qO - http://dl.suckless.org/tools/ | grep dmenu-[0-9].*gz | sed 's/.*\(dmenu-[0-9].*gz\).*/\1/' | sed 's/dmenu-//;s/.tar.gz//' | sort -V | tail -n1)

result

exit 0
