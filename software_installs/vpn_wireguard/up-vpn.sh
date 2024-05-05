#!/bin/bash

sudo wg-quick up wg0
sudo wg show wg0

##
sudo ufw allow 51820/udp
sudo ufw enable