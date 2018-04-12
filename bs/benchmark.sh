#!/bin/bash
cd $DEP_BUILD_DIR
[ -d benchmark ] || mkdir benchmark
cd benchmark
cmake $DEP_SOURCE_DIR/benchmark -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX -DCMAKE_BUILD_TYPE=Release && make -j$JOBS && make install 
