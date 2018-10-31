#!/bin/bash -e

. pkgupdate

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/gnustep/libs-base/releases | grep gnustep-base-[0-9].*gz | sed 's/.*\(gnustep-base-[0-9].*gz\).*/\1/' | sed 's/gnustep-base-//;s/.tar.gz//' | sort -V | tail -n1)

result

exit 0
