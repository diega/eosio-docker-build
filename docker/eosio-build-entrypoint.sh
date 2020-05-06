#!/bin/sh

scripts/eosio_build.sh -y
chmod +x build/packages/generate_package.sh
cd build/packages
./generate_package.sh deb
cp *.deb /out
