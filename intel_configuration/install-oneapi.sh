#!/bin/bash

file=l_BaseKit_p_2024.1.0.596_offline.sh
wget https://registrationcenter-download.intel.com/akdlm/IRC_NAS/fdc7a2bc-b7a8-47eb-8876-de6201297144/$file
chmod +x $file

./$file

sudo tee -a ~/.bashrc <<-EOF

# LINUX UTILS - INTEL ONEAPI
export INTEL_API=$HOME/intel/oneapi/compiler/latest
export PATH=\$JAVA_HOME/bin:\$PATH

EOF

