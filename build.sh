#!/bin/sh

CCACHE=$(command -v ccache)

TOOLCHAIN=/home/giamma/Scrivania/aarch64-linux-android-4.9/bin/aarch64-linux-android-

export CROSS_COMPILE="${CCACHE} ${TOOLCHAIN}"

export ARCH=arm64

export USE_CCACHE=1 
export CCACHE_DIR=/media/disco/ccache 
ccache -M 300G
ccache -s

make clean O=out/
make mrproper O=out/
make mido_defconfig O=out/
make -j16 O=out/
