#!/bin/sh
cp .dir_colors ~/
cp .zshrc ~/ && source ~/.zshrc
#cp .bashrc ~/ && source ~/.bashrc
cp .Xdefaults ~/ && source ~/.Xdefaults
cp -rf mpd ~/.config/
rm -rf ~/.config/mpd/playlists
mkdir -p ~/.config/mpd/playlists
touch ~/.config/mpd/state
touch ~/.config/mpd/log
touch ~/.config/database
cp -rf i3 ~/.config/
cp -rf polybar ~/.config/
cp mpvsingle.desktop ~/.local/share/applications/
