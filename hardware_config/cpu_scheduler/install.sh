#!/bin/bash

cp ./perf-prof.sh /usr/local/bin/perf-prof.sh
sudo chmod 744 /usr/local/bin/perf-prof.sh

cp ./perf-prof.service /etc/systemd/system/perf-prof.service
sudo chmod 664 /etc/systemd/system/perf-prof.service

sudo systemctl daemon-reload
sudo systemctl enable perf-prof.service
sudo systemctl start perf-prof.service

cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

