# Networking Basics

SysCore practical networking lab covering network interfaces, IP addressing, routing, gateways, DNS, connectivity testing, network diagnostics, and listening ports.

## SSH Server

OpenSSH Server was installed and tested locally using:

`ssh localhost`
The SSH server listens on TCP port 22. A local SSH connection was successful, confirming SSH authentication and session creation.

The effective SSH configuration was checked with:

`sudo sshd -T`

Key settings:

- Port: 22
- Password authentication: enabled
- Public-key authentication: enabled
- Root password login: disabled


## UFW Firewall

UFW was enabled as the host firewall.

Default policies:

- Incoming: deny
- Outgoing: allow
- Routed: deny

SSH access was explicitly allowed on TCP port 22 for IPv4 and IPv6.

SSH connectivity was tested again after enabling UFW, confirming that the firewall did not block SSH access.

## Network Interface Administration

Network interfaces were inspected using:

```bash
ip -br addr
ip -br link

## Network Ports and Services

Listening network ports were inspected using:

```bash
sudo ss -lntp
