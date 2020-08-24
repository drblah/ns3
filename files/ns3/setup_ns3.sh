#!/bin/bash

git clone https://gitlab.com/nsnam/bake.git /workspace/bake

export BAKE_HOME=/workspace/bake
export PATH=${PATH}:${BAKE_HOME}:${BAKE_HOME}/build/bin
export PYTHONPATH=${PYTHONPATH}:${BAKE_HOME}:${BAKE_HOME}/build/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${BAKE_HOME}/build/lib

# Get NS3
cd /workspace && bake.py configure -e dce-ns3-dev
cd /workspace && bake.py check
cd /workspace && bake.py download

# Build NS3
cd /workspace && bake.py build

