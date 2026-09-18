# Ansible File Permissions Management

## Overview

Ansible was used to create and manage a Linux configuration file with a defined owner, group, and permission mode.

## Configuration

The playbook is:

`ansible/playbooks/file-permissions.yml`

It manages:

```text
/etc/syscore/permissions-test.conf
```

The desired state was:

```text
Owner: root
Group: sysops
Permissions: 0640
```

## Execution

The playbook was executed successfully:

```text
ok=2 changed=0 failed=0
```

The file was verified with:

```bash
sudo ls -l /etc/syscore/permissions-test.conf
```

The result confirmed:

```text
-rw-r----- 1 root sysops ...
```

The file contents were also verified successfully.

## Idempotency

The playbook was executed a second time.

The result was:

```text
ok=2 changed=0 failed=0
```

This demonstrated that Ansible recognized the file was already in the desired state and made no unnecessary changes.

## Cleanup

The temporary permissions test file was removed after the lab.

## Automation Workflow

```text
Define File State
       ↓
Set Owner and Group
       ↓
Set Permissions
       ↓
Verify File
       ↓
Run Again
       ↓
Confirm changed=0
```
