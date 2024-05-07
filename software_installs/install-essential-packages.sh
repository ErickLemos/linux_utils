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

### dev tools ###
sudo apt-get install gnome-boxes -y
sudo apt-get install gnome-connections -y

### para compilação do depedencias e kernel ###
sudo apt-get install \
    fakeroot \
    build-essential \
    ncurses-dev \
    xz-utils \
    libssl-dev \
    bc \
    flex \
    libelf-dev \
    bison -y