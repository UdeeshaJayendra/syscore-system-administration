# Ansible Conditionals and Loops

## Overview

Ansible conditionals and loops were used to demonstrate how automation tasks can be controlled and repeated.

## Conditional

The playbook checks the operating system:

```yaml
when: ansible_distribution == "Ubuntu"
```

Because the managed system is Ubuntu, the task executed successfully.

## Loop

A loop was used to process multiple directory values:

```text
/etc/syscore
/var/log
/tmp
```

Ansible executed the task once for each item.

## Execution

The playbook was executed with:

```bash
ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/conditionals-loops.yml
```

The results showed:

```text
This system is running Ubuntu
Managing directory: /etc/syscore
Managing directory: /var/log
Managing directory: /tmp
```

The playbook completed successfully:

```text
ok=3 changed=0 unreachable=0 failed=0 skipped=0
```

## Key Concepts

### Conditionals

Conditionals allow tasks to run only when a specific condition is true.

### Loops

Loops allow the same task to be executed for multiple values without duplicating the task definition.

## Automation Workflow

```text
Gather System Facts
        ↓
Evaluate Condition
        ↓
Run Conditional Task
        ↓
Process Multiple Items
        ↓
Verify Results
```

