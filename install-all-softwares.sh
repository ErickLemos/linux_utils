#!/bin/bash
# executa todos os scripts da pasta /software_installs

software_installs_dir=./software_installs
source $software_installs_dir/install-essential-packages.sh
source $software_installs_dir/install-flathub-base.sh
source $software_installs_dir/install-graalvm.sh
source $software_installs_dir/install-rust.sh