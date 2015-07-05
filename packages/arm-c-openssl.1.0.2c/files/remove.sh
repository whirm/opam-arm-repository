#!/bin/sh -e

PREFIX=$1/arm-linux-gnueabihf
FILES="\
  bin/c_rehash bin/openssl \
  include/openssl \
  lib/libcrypto.a lib/libssl.a \
  lib/pkgconfig/libcrypto.pc lib/pkgconfig/libssl.pc lib/pkgconfig/openssl.pc \
  ssl"

for f in $FILES; do
  echo Removing $PREFIX/$f...
  rm -rf "$PREFIX/$f"
done
