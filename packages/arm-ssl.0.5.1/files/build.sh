#!/bin/sh -e

PREFIX=$1

ARCH=`uname | tr A-Z a-z`
EXEC_PREFIX=arm-linux-gnueabihf-
INCLUDE=$PREFIX/arm-linux-gnueabihf/include
#CC="$TOOLCHAIN/${EXEC_PREFIX}gcc --sysroot $SYSROOT -I $INCLUDE"

CPPFLAGS=" -I$PREFIX/arm-linux-gnueabihf/include"
CFLAGS="-march=armv7-a -mfpu=vfpv3-d16 -mhard-float "
LDFLAGS="-L$PREFIX/arm-linux-gnueabihf/lib "
PATH="$PREFIX/bin/arm-linux-gnueabihf:$TOOLCHAIN:$PATH"

export CPPFLAGS LDFLAGS PATH

./bootstrap

./configure --host arm-linux-gnueabihf OCAMLFIND="$PREFIX/bin/ocamlfind -toolchain arm" LIBS="-lcrypto "

make CLIBS="ssl crypto"
make install
