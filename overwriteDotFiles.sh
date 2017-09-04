#!/bin/bash
cp .zshrc ~/
cp .bashrc ~/
cp .Xdefaults ~/
cp -rf mpd ~/.config/
rm -rf ~/.config/mpd/playlists
mkdir -p ~/.config/mpd/playlists
touch ~/.config/mpd/state
touch ~/.config/mpd/log
touch ~/.config/database
cp -rf i3 ~/.config/
cp -rf polybar ~/.config/

