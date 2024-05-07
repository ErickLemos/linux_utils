#!/bin/bash
# net.ipv4.tcp_low_latency=1 para jogos
# net.ipv4.tcp_low_latency=0 para transferencias de larga escala

dir=/etc/sysctl.d/99-sysctl.conf

sudo tee -a $dir  <<-EOF

# LINUX UTILS - network settings
net.ipv4.tcp_tw_reuse=1
net.ipv4.tcp_fin_timeout=15
net.ipv4.tcp_keepalive_time=120
net.ipv4.tcp_low_latency=1
net.ipv4.tcp_rmem=4096 65536 16777216
net.core.rmem_max=16777216
net.core.wmem_max=16777216

EOF

cat $dir