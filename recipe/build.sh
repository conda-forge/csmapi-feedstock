#!/bin/bash

mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DPython3_EXECUTABLE=$PYTHON ..
cmake --build . --config RELEASE
cmake --install . --config RELEASE
