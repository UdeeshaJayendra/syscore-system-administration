# Ansible Configuration Management

## Overview

Ansible is an automation tool used to manage Linux systems through inventories, modules, and playbooks.

For this SysCore lab, the local Ubuntu system was used as the managed host.

## 1. Ansible Installation

Ansible Core was installed and verified:

```bash
ansible --version
```

The installed version was Ansible Core 2.19.0.

## 2. Local Connectivity

The local host was tested with the Ansible ping module:

```bash
ansible localhost -m ping -c local
```

The test returned:

```text
localhost | SUCCESS
```

## 3. Inventory

An explicit inventory was created:

```text
ansible/inventory/hosts.ini
```

It defines the local host:

```ini
[local]
localhost ansible_connection=local
```

The inventory was tested successfully.

## 4. First Playbook

A system information playbook was created:

```text
ansible/playbooks/system-info.yml
```

The playbook collected:

* Hostname
* Operating system
* System uptime

The playbook completed successfully with no failed tasks.

## 5. Configuration Management

A configuration-management playbook was created:

```text
ansible/playbooks/manage-config.yml
```

The playbook created:

```text
/etc/syscore/
```

and:

```text
/etc/syscore/syscore.conf
```

The configuration file contains:

```text
Managed by Ansible
Project: SysCore
```

The playbook uses `become: true` to perform administrator-level tasks.

## 6. Idempotency

The playbook was executed a second time.

The second execution returned:

```text
changed=0
failed=0
```

This demonstrated Ansible idempotency: once the desired configuration was already present, Ansible did not make unnecessary changes.

## Automation Workflow

```text
Inventory
    ↓
Playbook
    ↓
Tasks
    ↓
Managed System
    ↓
Verify Desired State
```

