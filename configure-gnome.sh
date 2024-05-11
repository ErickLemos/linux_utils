#!/bin/bash
# configura gnome com base em preferencias pessoais

gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 34
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock show-delay 0.1
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-dominant-color true

# background
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/Little_numbat_boy_by_azskalt.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/Little_numbat_boy_by_azskalt.png"

# login screen
gsettings set org.gnome.login-screen banner-message-text "bem vindo!"