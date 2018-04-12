.  /cvmfs/sft.cern.ch/lcg/contrib/gcc/7.3.0binutils/x86_64-centos7/setup.sh
export PATH=~/.local/bin:$PATH
export CXX=clang++
export CC=clang

export PROFILE_BASE_DIR=`realpath $1`
export DEP_BUILD_DIR=$PROFILE_BASE_DIR/deps-build/
export DEP_SOURCE_DIR=$PROFILE_BASE_DIR/../deps-source/
export GV_SRC=$PROFILE_BASE_DIR/../geant/

export INSTALL_PREFIX=$PROFILE_BASE_DIR/deps-install/
export JOBS=`nproc`

mkdir -p $DEP_BUILD_DIR 
