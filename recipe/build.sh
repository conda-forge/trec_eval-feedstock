#!/bin/bash

set -ex

# compile
make -j$CPU_COUNT

# test skipped on osx_arm64
if [[ "${target_platform}" != osx-arm64 ]]; then
    make quicktest
fi

# install (cannot use 'make install')
mkdir -p $PREFIX/bin
cp ./trec_eval $PREFIX/bin/trec_eval
