#!/usr/bin/env bash

echo Install packages...
# for building android source code
sudo apt-get install -y make m4 subversion git-core build-essential realpath openjdk-8-jdk libncurses5 lib32z1 unzip
# for building desktop platform source code
sudo apt-get install -y build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev libfreetype6-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libhiredis-dev libcurl3-dev
