#!/bin/bash
set -ex

# set properties
source ./set_properties.sh

# set mpi versions
source ./set_mpis.sh

# install utils
./install_utils.sh

# install compilers
./install_gcc.sh

# install mellanox ofed
./install_mellanoxofed.sh

# install mpi libraries
./install_mpis.sh

# install AMD tuned libraries
./install_amd_libs.sh

# install Intel libraries
./install_intel_libs.sh

# optimizations
./hpc-tuning.sh

# copy test file
$COMMON_DIR/copy_test_file.sh
