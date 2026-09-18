# Ansible Templates

## Overview

Ansible templates were used to generate a Linux configuration file dynamically from system facts.

## Template

The Jinja2 template is:

`ansible/templates/syscore.conf.j2`

It contains variables such as:

```text
{{ ansible_hostname }}
{{ ansible_distribution }}
{{ ansible_distribution_version }}
{{ ansible_architecture }}
```

Ansible replaces these variables with information collected from the managed system.

## Configuration Management

The template playbook is:

`ansible/playbooks/template-management.yml`

It deploys the generated configuration to:

```text
/etc/syscore/syscore.conf
```

The generated file contained:

```text
hostname=udeesha-Thin-GF63-12UCX
os=Ubuntu 25.10
architecture=x86_64
```

## Verification

The generated configuration was verified with:

```bash
sudo cat /etc/syscore/syscore.conf
```

The values matched the local system.

## Idempotency

The template playbook was executed a second time.

The result was:

```text
ok=2 changed=0 failed=0
```

This demonstrated that Ansible did not rewrite the configuration because the generated content was already correct.

## Key Concept

Templates separate configuration structure from deployment logic.

```text
Template
    ↓
System Facts
    ↓
Ansible
    ↓
Generated Configuration
```

## Evidence

* `48-syscore-ansible-template-configuration.png`
