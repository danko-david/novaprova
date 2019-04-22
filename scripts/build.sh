#!/bin/bash

#source: https://novaprova.readthedocs.io/en/latest/getting-started.html (access: 2019.04.23)

#usage: ./scripts/build.sh
# add -j$CONCURRENCY to compile faster
# add CFLAGS="-D_NP_DEBUG" to compile debug version
# eg: ./scripts/build.sh -j4 CFLAGS="-D_NP_DEBUG -D_NP_x86_64"

cd "$(dirname "$0")"
cd ..

set -e

export CPPFLAGS="-I$(readlink -f .)"

autoreconf -iv
./configure
make "$@"

echo "Novaprova build succeed!"
echo "If you want to install novaprova system wide call: sudo make install"

