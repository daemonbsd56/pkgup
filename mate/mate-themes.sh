#!/bin/bash -e

. pkgupdate

materelease=1.20

echo -ne "$name ... "

majversion=$(wget -qO - http://pub.mate-desktop.org/releases/themes/ | grep "<tr><td><a" | grep -v Parent | cut -d '"' -f2 | sed 's/\///' | tail -n1)
upversion=$(wget -qO - http://pub.mate-desktop.org/releases/themes/$majversion/ | grep mate-themes-[0-9.]* | cut -d '"' -f2 | sed 's/mate-themes-//;s/.tar.xz//' | sort -V | tail -n1)

result

exit 0
