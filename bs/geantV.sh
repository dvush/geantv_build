#!/bin/bash
set -e
BRANCH=${1:-master}
GV_DEP=${2:-geant}


echo $GV_DEP $BRANCH

cp -r $GV_SRC/ $PROFILE_BASE_DIR/$GV_DEP
cd $PROFILE_BASE_DIR/$GV_DEP
git checkout $BRANCH

[ -d build ] || mkdir build
cd build
cmake ../ \
-DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
-DUSE_VECGEOM_NAVIGATOR=ON \
-DUSE_ROOT=ON \
-DVecGeom_DIR=$INSTALL_PREFIX/lib/CMake/VecGeom \
-DCTEST=OFF \
-DWITH_GEANT4=ON \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_REAL_PHYSICS_TESTS=ON \
