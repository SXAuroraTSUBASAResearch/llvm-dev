#!/bin/sh

$CMAKE -G Ninja \
       -DLLVM_ENABLE_CXX1Y=on \
       -DBUILD_SHARED_LIBS=on \
       -DCMAKE_SIZEOF_VOID_P=8 \
       -DRV_ENABLE_CRT=on \
  -DCMAKE_BUILD_TYPE="$BUILD_TYPE" \
  -DLLVM_TARGETS_TO_BUILD="$TARGET" \
  -DCMAKE_INSTALL_PREFIX=$DEST \
  $SRCDIR/llvm
