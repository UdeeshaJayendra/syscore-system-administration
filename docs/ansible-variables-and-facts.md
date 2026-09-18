# Ansible Variables and Facts

## Overview

Ansible variables and facts were used to display configuration values and information automatically gathered from the local Ubuntu system.

## Variables

The playbook defines custom variables for the SysCore lab:

```yaml
lab_environment: lab
project_name: SysCore
administrator: udeesha
```

These values are supplied by the playbook.

## Facts

Ansible automatically gathered system facts including:

```text
Hostname: u...
OS: Ubuntu 25.10
Architecture: x86_64
Total RAM: 7124 MB
```

## Execution

The playbook was executed with:

```bash
ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/variables-facts.yml
```

The playbook completed successfully:

```text
ok=3 changed=0 unreachable=0 failed=0
```

## Key Concept

Variables allow administrators to define reusable values.

Facts allow Ansible to discover information about managed systems automatically.

```text
Custom Variables
       +
Ansible Facts
       ↓
Dynamic Configuration and Automation
```
