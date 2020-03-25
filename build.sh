#!/bin/bash

rm -rf out
mkdir out

args="-j8 O=out \
	ARCH=arm64 \
	CLANG_TRIPLE=aarch64-linux-gnu- \
	CC=/home/ratoriku/kernel/cbl/bin/clang \
	CROSS_COMPILE=/home/ratoriku/kernel/cbl/bin/aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=/home/ratoriku/kernel/cbl/bin/arm-linux-gnueabi- "

make $args lavender-perf_defconfig
make $args


