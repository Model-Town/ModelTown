#!/usr/bin/env bash

INSTALL_PATH=$HOME/android
BUILD_PATH=$HOME/model-town/build/android

mkdir -p $INSTALL_PATH

echo Install SDK...
wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -P /tmp
tar xf /tmp/android-sdk_r24.4.1-linux.tgz -C $INSTALL_PATH
android-sdk-linux/tools/android update sdk --no-ui -a --filter platform-tool,android-25,build-tools-25.0.3
rm -rf /tmp/android-sdk_r24.4.1-linux.tgz

if [ -z "$(grep 'ANDROID_SDK' $HOME/.bashrc)" ] ; then
  echo 'export ANDROID_SDK=$HOME/android/android-sdk-linux' >> $HOME/.bashrc
  echo 'export PATH=$PATH:$ANDROID_SDK/build-tools/25.0.3' >> $HOME/.bashrc
fi

echo Install NDK...
wget https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip -P /tmp
unzip -d $INSTALL_PATH /tmp/android-ndk-r15c-linux-x86_64.zip
rm -rf /tmp/android-ndk-r15c-linux-x86_64.zip

echo Write local.properties...
echo 'sdk.dir = '$INSTALL_PATH'/android-sdk-linux' > $BUILD_PATH/local.properties
echo 'ndk.dir = '$INSTALL_PATH'/android-ndk-r15c' >> $BUILD_PATH/local.properties
