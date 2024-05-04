#!/bin/bash

file=Python-3.11.9.tgz
wget https://www.python.org/ftp/python/3.11.9/$file

tar -xf $file
rm $file

mkdir $HOME/linux_utils
mkdir $HOME/linux_utils/python
mkdir $HOME/linux_utils/python/3.11.9

mv ./Python*/* $HOME/linux_utils/python/3.11.9
rm -r Python*

cd $HOME/linux_utils/python/3.11.9
./configure --enable-optimizations 
make
make test
sudo make install

sudo tee -a ~/.bashrc <<-EOF

# LINUX UTILS - PYTHON
export PYTHON_HOME=$HOME/linux_utils/python/3.11.9
export PATH=\$PYTHON_HOME:\$PATH

EOF

source ~/.bashrc