#!/bin/bash
cd $DEP_BUILD_DIR
[ -d geant4 ] || mkdir geant4
cd geant4
cmake $DEP_SOURCE_DIR/geant4 -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
-DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_GDML=ON \
-DGEANT4_USE_SYSTEM_EXPAT=OFF \
&& make -j$JOBS && make install
