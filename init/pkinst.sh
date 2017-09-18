#!/bin/bash
sudo hostnamectl set-hostname wcplpl
yaourt -S fcitx-im fcitx-mozc-ut2

yaourt -S install socat expect xclip jack2 gnome-keyring archlinux-keyring libgnome-keyring jq uxvt-unicode samba scrot youtube-dl mpv inox-bin nss-mdns ntfs-3g neovim avahi xf86-input-libinput nvidia-settings i3-wm i3lock i3status j4-dmenu-desktop mcomix google-chrome pepper-flash --noconfirm

sudo cp redis.conf /etc/sysctl.d/
sudo cp nsswitch.conf /etc/
sudo cp smb.conf /etc/samba/
sudo cp 20-mouse.conf /etc/X11/xorg.conf.d/

sudo sed -i -e "s/#ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/g" /etc/locale.gen
sudo locale-gen
