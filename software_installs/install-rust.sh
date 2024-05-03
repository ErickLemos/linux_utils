#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo tee -a ~/.bashrc <<-EOF

export JAVA_HOME=$newJavaHome
export PATH=\$HOME/.cargo/bin:\$PATH

EOF

source ~/.bashrc