#!/bin/bash
cd $DEP_BUILD_DIR
[ -d root ] || mkdir root
cd root
cmake $DEP_SOURCE_DIR/root -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
-Dc++11=ON -Dgdml=ON \
-Dmathmore=ON -Dbuiltin_gsl=ON -Dpythia8=OFF -Dx11=OFF -Dopengl=OFF -Dtbb=OFF -Dssl=OFF -Dtmva=OFF -Dbuiltin_afterimage=OFF \
&& make -j $JOBS && make install
