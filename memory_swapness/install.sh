#!/bin/bash

sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF

# LINUX UTILS - memory adjusts
vm.swappiness=10
vm.vfs_cache_pressure=50
vm.dirty_background_ratio=5
vm.dirty_ratio=10 

EOF
