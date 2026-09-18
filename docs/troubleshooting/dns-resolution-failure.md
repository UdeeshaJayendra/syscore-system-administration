# DNS Resolution Failure Troubleshooting

## Scenario

A controlled DNS failure was simulated by configuring the Wi-Fi interface with an unreachable DNS server.

## 1. Detect the Failure

Network connectivity was tested using:

```bash
ping -c 4 8.8.8.8
