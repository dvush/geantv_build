#!/bin/bash
cd $DEP_BUILD_DIR
[ -d veccore ] || mkdir veccore
cd veccore
cmake $DEP_SOURCE_DIR/veccore -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX && make -j$JOBS && make install 
