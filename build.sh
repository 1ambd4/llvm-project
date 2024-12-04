#!/bin/bash

cmake -G "Ninja" -B "build" -S "llvm" \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_CXX_STANDARD=17 \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX="prebuild" \
    -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
    -DDEFAULT_SYSROOT="$(xcrun --show-sdk-path)" \
    -DLIBCXXABI_USE_LLVM_UNWINDER=ON \
    -DLLVM_ENABLE_PROJECTS="clang" \
    -DLLVM_USE_LINKER="lld" \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind" \
    -DLLVM_TARGETS_TO_BUILD="host"
