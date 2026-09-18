# Read-Only Filesystem Troubleshooting

## Scenario

A controlled read-only filesystem problem was simulated using a temporary ext4 loopback filesystem.

## 1. Detect the Problem

The test filesystem was remounted as read-only:

```bash
sudo mount -o remount,ro troubleshooting-lab/readonly
