#!/bin/bash

# Configure the bash shell using Omakub defaults
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp $POPMAKUB_ROOT/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source $POPMAKUB_ROOT/defaults/bash/shell

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp $POPMAKUB_ROOT/configs/inputrc ~/.inputrc
