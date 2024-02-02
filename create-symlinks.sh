#!/bin/sh

INSTALL_DIR=$HOME/.config/emacs
LEGACY_DIR=$HOME/.emacs.d
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "This script will attempt to install evilmacs configuration in $INSTALL_DIR";

if [ -d "$INSTALL_DIR" ] || [ -d "$LEGACY_DIR" ]; then
  echo "Found $INSTALL_DIR or $LEGACY_DIR. Please remove or rename it before running this.";
  exit 1;
else
  mkdir $INSTALL_DIR;
fi

for i in $SCRIPTPATH/*; do
  ln -s $i $INSTALL_DIR;
done;
