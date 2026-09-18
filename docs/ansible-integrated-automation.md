# Ansible Integrated Automation

## Overview

A complete SysCore automation workflow was created by combining Ansible variables, system facts, templates, conditionals, and handlers.

## Automation Components

The integrated playbook uses:

* Variables for project and environment information
* Ansible facts for system information
* A Jinja2 template for configuration generation
* A conditional for Ubuntu systems
* A handler triggered when the configuration changes

## Playbook

The playbook is:

`ansible/playbooks/integrated-automation.yml`

The template is:

`ansible/templates/system-profile.conf.j2`

## First Execution

The playbook generated:

```text
/etc/syscore/system-profile.conf
```

The task reported:

```text
changed: [localhost]
```

The handler was triggered:

```text
RUNNING HANDLER [System profile updated]
```

The playbook completed successfully:

```text
ok=3 changed=1 failed=0
```

## Generated Configuration

The resulting configuration contained system-specific information:

```text
Project=SysCore
Environment=lab
Hostname=udeesha-Thin-GF63-12UCX
OS=Ubuntu 25.10
Architecture=x86_64
RAM_MB=7124
```

## Idempotency

The playbook was executed a second time.

The result was:

```text
ok=2 changed=0 failed=0
```

The handler did not run because the configuration was already in the desired state.

## Complete Workflow

```text
Variables
    +
Ansible Facts
    ↓
Template
    ↓
Conditional Check
    ↓
Generate Configuration
    ↓
Configuration Changed?
       / \
     Yes  No
      ↓    ↓
   Handler  Nothing
```

## Result

This lab demonstrates a complete Ansible configuration-management workflow on a Linux system, including dynamic configuration generation and idempotent execution.

