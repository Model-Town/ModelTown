#!/usr/bin/env bash

__DIR__=$(cd $(dirname $0); pwd)
SCRIPTS_PATH=${SCRIPTS_PATH:-$__DIR__}

echo Updating...
sudo apt-get update

echo Installing packages...
$SCRIPTS_PATH/install_packages.sh

echo Installing gradle...
$SCRIPTS_PATH/install_gradle.sh

echo Installing SDK and NDK...
$SCRIPTS_PATH/install_sdk_and_ndk.sh

echo Setupping android...
$SCRIPTS_PATH/android.sh
