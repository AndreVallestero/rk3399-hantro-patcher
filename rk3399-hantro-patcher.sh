#!/bin/bash

KERNEL_DIR=../linux-pinebook-pro
PATCH_DIR=$(pwd)/patches

cd $KERNEL_DIR
echo Applying patches in $(pwd)
for i in $PATCH_DIR/*.patch; do
	echo applying $(basename "$i")
	git apply --whitespace=nowarn $i
done
