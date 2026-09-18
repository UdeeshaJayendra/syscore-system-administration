# Systemd Service Startup Failure Troubleshooting

## Scenario

A controlled systemd service failure was simulated using a temporary SysCore test service.

## Investigation

The service was configured with an incorrect `ExecStart` path.

The service failed to start with:

```text
status=203/EXEC
