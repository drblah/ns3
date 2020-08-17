#!/bin/bash

git clone https://gitlab.com/nsnam/bake.git /workspace/bake

export BAKE_HOME=/workspace/bake
export PATH=${PATH}:${BAKE_HOME}:${BAKE_HOME}/build/bin
export PYTHONPATH=${PYTHONPATH}:${BAKE_HOME}:${BAKE_HOME}/build/lib

# Get NS3
cd /workspace && bake.py configure -e ns-allinone-3.31
cd /workspace && bake.py check
cd /workspace && bake.py download

# Build NS3
cd /workspace && bake.py build

