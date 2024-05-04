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
sudo apt-get install gimp -y
sudo apt-get install totem -y

