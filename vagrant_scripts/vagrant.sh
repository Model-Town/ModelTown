#!/usr/bin/env bash

__DIR__=$(cd $(dirname $0); pwd)
SCRIPTS_PATH=${SCRIPTS_PATH:-$__DIR__}

echo Updating...
sudo apt-get update

echo Installing packages...
$SCRIPTS_PATH/install_packages.sh
