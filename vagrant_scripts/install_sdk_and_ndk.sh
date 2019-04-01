#!/usr/bin/env bash

INSTALL_PATH=$HOME/android

mkdir -p $INSTALL_PATH
cd $INSTALL_PATH

echo Install SDK...
wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar xf android-sdk_r24.4.1-linux.tgz
android-sdk-linux/tools/android update sdk --no-ui -a --filter platform-tool,android-25,build-tools-25.0.3

echo Install NDK...
wget https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip
unzip android-ndk-r15c-linux-x86_64.zip
