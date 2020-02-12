#!/bin/bash

KERNEL_DIR=../linux-pinebook-pro
PATCH_DIR=patches

echo Applying patches in $KERNEL_DIR
for i in $PATCH_DIR/*.patch; do
	echo applying $(basename "$i")
	git apply --directory=$KERNEL_DIR --whitespace=nowarn $i
done
