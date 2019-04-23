#!/bin/bash
set -e

cd "$(dirname "$0")"

cd ..
make clean

./scripts/build.sh -j"$(nproc)"

cd tests
make clean
make check
