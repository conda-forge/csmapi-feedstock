#!/bin/bash

mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DPython_FIND_VIRTUALENV=FIRST -DPython3_EXECUTABLE=$PYTHON ..
cmake --build . --config RELEASE
cmake --install . --config RELEASE
