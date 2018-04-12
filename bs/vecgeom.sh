#!/bin/bash
cd $DEP_BUILD_DIR
[ -d VecGeom ] || mkdir VecGeom
cd VecGeom
cmake $DEP_SOURCE_DIR/VecGeom/ -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
-DROOT=ON  \
-DBACKEND=Vc \
&& make -j$JOBS && make install 
