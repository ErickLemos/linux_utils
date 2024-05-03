#!/usr/bin/env bash
# ex: ./set-java-home.sh /dir/dir/jdk

file=graalvm-jdk-21_linux-x64_bin.tar.gz

wget https://download.oracle.com/graalvm/21/latest/$file
tar -xf $file
rm $file

mkdir $HOME/linux_utils
mkdir $HOME/linux_utils/jdks
mkdir $HOME/linux_utils/jdks/graalvm_21

mv ./graal*/* $HOME/linux_utils/jdks/graalvm_21
rm -r graal*

sudo tee -a ~/.bashrc <<-EOF

# LINUX UTILS - JVM

export JAVA_HOME=$HOME/linux_utils/jdks/graalvm_21
export PATH=\$JAVA_HOME/bin:\$PATH

EOF

source ~/.bashrc