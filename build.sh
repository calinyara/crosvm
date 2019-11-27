#!/bin/bash

cd minijail
make clean
make

cd ../crosvm
LIBRARY_PATH=../minijail cargo build --release
