# Ansible Service Management

## Overview

Ansible was used to manage the SSH service on the local Ubuntu system.

## Service Management Playbook

The playbook was created at:

`ansible/playbooks/service-management.yml`

It ensures that:

- The SSH service is running.
- The SSH service is enabled to start at boot.

## Execution

The playbook was executed with:

```bash
ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/service-management.yml --ask-become-pass
