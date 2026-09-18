# Ansible Package Management

## Overview

Ansible was used to manage an Ubuntu package and verify its desired state.

## Playbook

The playbook is:

`ansible/playbooks/package-management.yml`

It uses the Ansible APT module with:

```yaml
name: tree
state: present
```

This means the `tree` package should be installed.

## Execution

The playbook was executed with:

```bash
ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/package-management.yml --ask-become-pass
```

The playbook completed successfully:

```text
ok=2 changed=0 failed=0
```

Because the `tree` package was already installed, Ansible did not need to make a change.

## Verification

The installed package was verified with:

```bash
tree --version
```

Result:

```text
tree v2.2.1
```

## Key Concept

Ansible package management allows administrators to define the desired package state instead of manually installing packages on each managed system.

## Troubleshooting

The first version of the playbook used:

```yaml
update_cache: true
```

The task failed because the APT cache refresh could not complete.

The playbook was simplified to manage the already-installed package without forcing an APT cache refresh.

## Automation Workflow

```text
Define Desired Package State
        ↓
Run Ansible Playbook
        ↓
Check Package State
        ↓
Apply Changes if Required
        ↓
Verify Package
```
