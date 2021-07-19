#!/bin/bash

./utils/git-sync-deps

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    ..

make -j${CPU_COUNT}
make install


cp tools/spirv-as $PREFIX/bin/spirv-as
cp tools/spirv-dis $PREFIX/bin/spirv-dis
cp tools/spirv-val $PREFIX/bin/spirv-val
cp tools/spirv-opt $PREFIX/bin/spirv-opt
cp tools/spirv-cfg $PREFIX/bin/spirv-cfg
cp tools/spirv-link $PREFIX/bin/spirv-link
