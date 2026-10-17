#!/bin/bash

mkdir build
cd build

# 0.6.3 declares CMake 3.1; drop the policy minimum once a release ships master's 3.5.
cmake ${CMAKE_ARGS} \
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
  -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=TRUE \
  ..

make -j${CPU_COUNT} install
