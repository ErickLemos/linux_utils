#!/bin/bash

sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF  

EOF

sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF
vm.swappiness=10
vm.vfs_cache_pressure=50
EOF

sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF  

EOF

sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF  
vm.dirty_background_ratio=5
vm.dirty_ratio=10 
EOF