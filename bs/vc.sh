#!/bin/bash
cd $DEP_BUILD_DIR
[ -d Vc ] || mkdir Vc
cd Vc
cmake $DEP_SOURCE_DIR/Vc -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX && make -j$JOBS && make install 
