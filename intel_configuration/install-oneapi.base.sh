#!/bin/bash

wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB \
 | gpg --dearmor | sudo tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] https://apt.repos.intel.com/oneapi all main" \
 | sudo tee /etc/apt/sources.list.d/oneAPI.list

sudo apt update -y
sudo apt install intel-basekit -y

sudo tee -a ~/.bashrc <<-EOF

# LINUX UTILS - INTEL ONEAPI
export INTEL_ONEAPI=/opt/intel/oneapi/2024.1
export PATH=\$INTEL_ONEAPI/bin:\$PATH

EOF
