#!/bin/bash

# SysCore disk usage monitoring script

echo "===== SysCore Disk Usage Check ====="
echo
df -h /
echo
echo "===== Disk Usage Summary ====="
df -h / | awk 'NR==2 {print "Root filesystem usage: " $5}'
echo "===================================="
