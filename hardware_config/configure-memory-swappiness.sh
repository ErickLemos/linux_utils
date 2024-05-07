#!/bin/bash

dir=/etc/sysctl.d/99-sysctl.conf

sudo tee -a $dir  <<-EOF

# LINUX UTILS - memory adjusts
vm.swappiness=10
vm.vfs_cache_pressure=50

EOF

cat $dir
