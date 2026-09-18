# Ansible Handlers

## Overview

Ansible handlers are special tasks that run only when another task reports a change.

This lab demonstrates how a handler can be triggered by a configuration change.

## Playbook

The playbook is:

`ansible/playbooks/handlers.yml`

The configuration task manages:

```text
/etc/syscore/syscore.conf
```

When the configuration changes, it notifies the handler.

## First Execution

The first playbook execution changed the configuration:

```text
changed: [localhost]
```

The handler then ran:

```text
RUNNING HANDLER [Report configuration change]
```

The handler displayed:

```text
Handler triggered because the configuration changed
```

The playbook completed successfully.

## Second Execution

The same playbook was executed again.

This time the configuration was already in the desired state:

```text
changed=0
failed=0
```

The handler did not run.

## Key Concept

Handlers are useful when an action should occur only after a configuration change.

A common real-world example is:

```text
Modify Configuration
        ↓
Notify Handler
        ↓
Restart or Reload Service
```

## Automation Workflow

```text
Manage Configuration
        ↓
Configuration Changed?
       / \
     Yes  No
      ↓    ↓
  Handler  Nothing
```

## Evidence

* `47-syscore-ansible-handler-triggered.png`
