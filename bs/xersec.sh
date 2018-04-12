#!/bin/bash
cd $DEP_BUILD_DIR
cp -r $DEP_SOURCE_DIR/xerces-c .
cd xerces-c
./configure --prefix=$INSTALL_PREFIX
make -j$JOBS && make install
