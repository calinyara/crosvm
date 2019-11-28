#!/bin/bash

cd minijail
make clean
make

cd ../crosvm
cargo clean
LIBRARY_PATH=../minijail cargo build --release
