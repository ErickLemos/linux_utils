#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install git -y
sudo apt-get install ffmpeg -y
sudo apt-get install libfuse2 -y
sudo apt-get install synaptic -y

### python env with cuda utils ###
sudo apt-get install nvidia-cuda-toolkit -y
sudo apt-get install nvidia-cudnn -y

### utils midia softwares ###
sudo apt-get install totem -y
sudo apt-get install eog -y
sudo apt-get install gimp -y
sudo apt-get install kdenlive -y

### gnome softwares ###
sudo apt-get install gnome-connections -y
sudo apt-get install gnome-shell-extension-manager -y
sudo apt-get install dconf-editor -y

### virtual box ###
sudo apt-get install virtualbox -y

### google chrome ###
googleChromeFile=google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/$googleChromeFile
sudo dpkg -i $googleChromeFile
