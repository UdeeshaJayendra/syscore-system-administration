#!/bin/bash

# SysCore system information automation script

echo "===== SysCore System Information ====="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "IP Address:"
hostname -I
echo "======================================"
