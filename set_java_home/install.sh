#!/bin/bash

newJavaHome=$1

sudo tee -a ~/.bashrc <<-EOF

# Java Config

EOF

sudo tee -a ~/.bashrc <<-EOF
export JAVA_HOME=$newJavaHome
export PATH=\$JAVA_HOME/bin:\$PATH
EOF

source ~/.bashrc