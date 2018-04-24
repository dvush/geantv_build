git clone http://root.cern.ch/git/root.git --depth 1

git clone https://github.com/VcDevel/Vc.git && $(cd Vc && git checkout -b 1.3.3 1.3.3)

git clone https://gitlab.cern.ch/VecGeom/VecGeom.git

#wget http://home.thep.lu.se/~torbjorn/pythia8/pythia8186.tgz
#tar xf pythia8186.tgz

git clone https://gitlab.cern.ch/hepmc/HepMC3.git

wget 'http://cern.ch/geant4-data/releases/geant4.10.04.p01.tar.gz'
tar xf geant4.10.04.p01.tar.gz
mv geant4.10.04.p01 geant4

#for geant4. only use if xerces is not installed in you machine
wget http://www.apache.org/dist/xerces/c/3/sources/xerces-c-3.2.1.tar.gz
tar xf xerces-c-3.2.1.tar.gz
mv xerces-c{-3.2.1,}

git clone https://github.com/google/benchmark.git
git clone https://github.com/google/googletest.git benchmark/googletest
$(cd benchmark/googletest && git checkout -b release-1.8.0-b release-1.8.0) #gtest fail workaroung

git clone https://gitlab.cern.ch/GeantV/VecCoreLib.git

git clone https://github.com/root-project/veccore.git
