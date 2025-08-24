#!/bin/bash

# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
cp $POPMAKUB_ROOT/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp $POPMAKUB_ROOT/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp $POPMAKUB_ROOT/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp $POPMAKUB_ROOT/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp $POPMAKUB_ROOT/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp $POPMAKUB_ROOT/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp $POPMAKUB_ROOT/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

# Migrate config format if needed
alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true

source $POPMAKUB_ROOT/install/desktop/set-alacritty-default.sh
