#!/bin/bash
set -e
. $INSTALL_PREFIX/bin/thisroot.sh
cd $DEP_BUILD_DIR
[ -d HepMC ] || mkdir HepMC
cd HepMC
cmake $DEP_SOURCE_DIR/HepMC3 -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
&& make -j$JOBS && make install
