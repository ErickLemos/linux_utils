#!/bin/bash

file=linux-6.8.9.tar.xz

wget https://cdn.kernel.org/pub/linux/kernel/v6.x/$file
tar -xf $file
rm $file


cd ./linux*
cp /boot/config-"$(uname -r)" .config

./scripts/config --file .config --set-str LOCALVERSION "-erick"
make -j$(nproc) 2>&1 | tee log
#make modules_install
#sudo make install


