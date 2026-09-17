# SSH Service Failure Troubleshooting

## Scenario

A controlled SSH service failure was simulated by stopping the SSH service and its socket.

## 1. Detect the Failure

The SSH service was checked:

```bash
systemctl is-active ssh
