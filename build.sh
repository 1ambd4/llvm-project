#!/bin/bash

cmake -G "Ninja" -B "build" -S "llvm" \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -DCMAKE_CXX_STANDARD=17 \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX="prebuild" \
    -DLLVM_ENABLE_PROJECTS="clang" \
    -DLLVM_USE_LINKER="lld" \
    -DLLVM_TARGETS_TO_BUILD="host" \
    -DBUILD_SHARED_LIBS=on
