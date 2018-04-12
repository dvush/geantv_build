#Do only once

cd deps_source
./download_deps.sh
cd ..

#Setup profile env with
. prf/gcc.sh gcc

  #prf/gcc.sh profile script
  #gcc will be dir for build and installing all deps and geant

#Build deps
./bs/all_deps.sh

#or call bs/DEPNAME.sh one by one
#it will build deps in gcc/deps-build and install to gcc/deps-install
#for example bs/xersec.sh if it is not installed on your machine(needed by Geant4)

#get geantv
./get_geantV.sh

./bs/geantV.sh #generate build scripts for geantV in gcc/geant

#or ./bs/geantV.sh BRANCHNAME DIRNAME to generate build scripts in gcc/DIRNAME

#Env ready, it is easy to go from here
cd gcc/geant/build
make
