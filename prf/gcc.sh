export CXX=g++
export CC=gcc

export PROFILE_BASE_DIR=`realpath $1`
export DEP_BUILD_DIR=$PROFILE_BASE_DIR/deps-build/
export DEP_SOURCE_DIR=$PROFILE_BASE_DIR/../deps-source/
export GV_SRC=$PROFILE_BASE_DIR/../geant/

export INSTALL_PREFIX=$PROFILE_BASE_DIR/deps-install/
export JOBS=`nproc`

mkdir -p $DEP_BUILD_DIR 
