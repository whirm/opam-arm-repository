#!/bin/sh -e

PREFIX=$1

MODULES="\
  bigarray camlp4 compiler-libs dbm dynlink graphics num num-top \
  ocamlbuild stdlib str threads unix"

rm -f "$PREFIX/lib/findlib.conf.d/arm.conf"
rm -f "$PREFIX/bin/arm-linux-gnueabihf/ocamlfind"
rm -f "$PREFIX/bin/arm-linux-gnueabihf-ocamlfind"

for m in $MODULES; do
  rm -rf "$PREFIX/arm-linux-gnueabihf/lib/$m"
done
