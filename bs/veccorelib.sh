#!/bin/bash
cd $DEP_BUILD_DIR
[ -d VecCoreLib ] || mkdir VecCoreLib
cd VecCoreLib
cmake $DEP_SOURCE_DIR/VecCoreLib -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX && make -j$JOBS && make install 
