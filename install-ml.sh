#!/bin/bash

echo Installing frei0r.

# Cleaning instalation
make clean
make distclean

./configure --prefix=/usr --enable-shared
make -j$(nproc)
make install
