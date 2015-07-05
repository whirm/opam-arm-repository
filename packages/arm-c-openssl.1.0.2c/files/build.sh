#!/bin/sh -e

PREFIX=$1

ARCH=`uname | tr A-Z a-z`
EXEC_PREFIX=arm-linux-gnueabihf-

export CROSS_COMPILE=/usr/bin/$EXEC_PREFIX

./Configure --prefix="$PREFIX/arm-linux-gnueabihf" linux-armv4 -mfpu=vfpv3-d16 -mhard-float -D_NDK_MATH_NO_SOFTFP=1 -Wl,--fix-cortex-a8 -Wl,--no-warn-mismatch

make all
make install_sw
