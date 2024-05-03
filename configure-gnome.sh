#!/bin/bash
# requisites: sudo apt-get install dbus-x11

gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# background
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/Little_numbat_boy_by_azskalt.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/Little_numbat_boy_by_azskalt.png"

# login screen
gsettings set org.gnome.login-screen banner-message-text "bem vindo!"