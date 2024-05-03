#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo tee -a ~/.bashrc <<-EOF

# LINUX UTILS - RUST 
export PATH=\$HOME/.cargo/bin:\$PATH

EOF

source ~/.bashrc