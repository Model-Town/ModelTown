#!/usr/bin/env bash

echo Install aliases...
if [ -z "$(grep 'cda=' $HOME/.bashrc)" ] ; then
  echo 'alias cda="cd '$HOME'/model-town/build/android"' >> $HOME/.bashrc
fi

source $HOME/.bashrc
