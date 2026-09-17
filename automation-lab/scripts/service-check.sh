#!/bin/bash

# SysCore service health check script

echo "===== SysCore Service Health Check ====="

services=("ssh" "nginx" "docker" "jenkins")

for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "$service: RUNNING"
    else
        echo "$service: NOT RUNNING"
    fi
done

echo "========================================="
