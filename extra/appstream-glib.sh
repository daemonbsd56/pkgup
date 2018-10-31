#!/bin/bash -e

. pkgupdate

source $(scratch path appstream-glib)/spkgbuild

echo -ne "$name ... "

upversion=$(wget -qO - https://github.com/hughsie/appstream-glib/releases | grep appstream_glib | grep tar.gz | cut -d / -f5 | head -n1 | sed 's/.tar.gz.*//;s/appstream_glib_//;s/_/./g')

result

exit 0
