# Port Conflict Troubleshooting

## Scenario

A controlled port-conflict problem was simulated by running a temporary Python HTTP server on port 8090 and attempting to start another server on the same port.

## 1. Detect the Failure

The first server was running on port 8090.

A second server was started using:

```bash
python3 -m http.server 8090
