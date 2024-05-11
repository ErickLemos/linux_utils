#!/bin/bash

sudo apt-get install \
  build-essential \
  fakeroot \
  ncurses-dev \
  xz-utils \
  libssl-dev \
  bc flex \
  libelf-dev \
  bison dwarves -y

file=linux-6.8.9.tar.xz
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/$file
tar -xf $file
rm $file

cd ./linux-6.8.9 || exit
cp -v /boot/config-"$(uname -r)" .config

make localmodconfig
scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS
scripts/config --set-str CONFIG_SYSTEM_TRUSTED_KEYS ""

make menuconfig
fakeroot make -j"$(nproc)"
echo $?

# continue com o processo executando manualmente:
# sudo make modules_install -j"$(nproc)"
# sudo make install -j"$(nproc)"

