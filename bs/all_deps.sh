#!/bin/bash
set -e
SCRIPTS_DIR=`dirname $0`
./$SCRIPTS_DIR/root.sh
./$SCRIPTS_DIR/vc.sh
./$SCRIPTS_DIR/veccore.sh
./$SCRIPTS_DIR/vecgeom.sh
./$SCRIPTS_DIR/hepmc.sh
./$SCRIPTS_DIR/geant4.sh
./$SCRIPTS_DIR/veccorelib.sh
