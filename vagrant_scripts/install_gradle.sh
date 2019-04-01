#!/usr/bin/env bash

INSTALL_PATH=$HOME/android

echo Install gradle...
mkdir -p $INSTALL_PATH
wget https://services.gradle.org/distributions/gradle-2.13-all.zip -P /tmp
unzip -d $INSTALL_PATH /tmp/gradle-2.13-all.zip
rm -rf /tmp/gradle-2.13-all.zip

if [ -z "$(grep 'gradle-2.13' $HOME/.bashrc)" ] ; then
  echo 'export PATH=$PATH:'$INSTALL_PATH'/gradle-2.13/bin' >> $HOME/.bashrc
fi

source $HOME/.bashrc
