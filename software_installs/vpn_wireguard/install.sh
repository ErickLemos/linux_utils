#!/bin/bash

sudo apt install wireguard -y
sudo mkdir -p /etc/wireguard/keys; wg genkey | sudo tee /etc/wireguard/keys/server.key | wg pubkey | sudo tee /etc/wireguard/keys/server.key.pub
sudo cat /etc/wireguard/keys/server.key

# configurar para iniciar junto com o sistema
sudo systemctl enable wg-quick@wg0