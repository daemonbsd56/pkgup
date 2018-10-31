#!/bin/bash -e

. pkgupdate

source $(scratch path spotify)/spkgbuild
version="${version}${_anotherversion}-${_amd64_release}"

echo -ne "$name ... "

upversion=$(wget -qO - http://repository.spotify.com/pool/non-free/s/spotify-client/ | grep amd64.deb | cut -d '"' -f2 | tail -n1 | sed 's/spotify-client_//;s/_.*//')

result

exit 0
