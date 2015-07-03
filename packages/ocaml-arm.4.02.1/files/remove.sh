#!/bin/sh -e

PREFIX=$1

BINS="ocaml ocamlbuild ocamlbuild.byte ocamlc ocamlcp ocamldebug ocamldep ocamldoc ocamllex ocamlmklib ocamlmktop ocamlobjinfo ocamlopt ocamloptp ocamlprof ocamlrun ocamlyacc"

for b in $BINS; do
  rm -f "$PREFIX/bin/arm-linux-gnueabihf-$b"
  rm -f "$PREFIX/bin/arm-linux-gnueabihf/$b"
done
rm -rf "$PREFIX/arm-linux-gnueabihf/lib/ocaml"
rm -f "$PREFIX/arm-linux-gnueabihf/bin/ocamlrun"
