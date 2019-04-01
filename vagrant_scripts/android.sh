#!/usr/bin/env bash

__DIR__=$(cd $(dirname $0); pwd)
ANDROID_PATH=${SCRIPTS_PATH:-$__DIR__/../model-town/build/android}
DEPS_PATH=$ANDROID_PATH/deps

echo Loading .bashrc...
source $HOME/.bashrc

echo Making android...
cd $ANDROID_PATH
make

echo Patching os.cpp...
cd $DEPS_PATH
patch -p1 < ../patches/os.patch

echo Making android...
cd ../
make

echo Patching sqlite3.c...
cd $DEPS_PATH
patch -p1 < ../patches/sqlite3.patch

echo Making android...
cd ../
make
