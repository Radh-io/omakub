#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Popmakub is for fresh Pop-os 22.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Popmakub..."
rm -rf ~/.local/share/popmakub
# git clone https://github.com/basecamp/omakub.git ~/.local/share/omakub >/dev/null
# if [[ $OMAKUB_REF != "master" ]]; then
# 	cd ~/.local/share/omakub
# 	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
# 	cd -
# fi
POPMAKUB_ROOT=~/src/radhio/omakub
echo "Installation starting..."
source $POPMAKUB_ROOT/install.sh
