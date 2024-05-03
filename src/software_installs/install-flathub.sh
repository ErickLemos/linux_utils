#!/bin/bash

sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
sudo apt update -y
sudo apt install flatpak -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo