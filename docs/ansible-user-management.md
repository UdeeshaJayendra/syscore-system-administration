# Ansible User Management

## Overview

Ansible was used to create, configure, verify, and remove a test Linux user on the local Ubuntu system.

## User Creation

The user-management playbook created the temporary user:

```text
syscorebot
```

The user was configured with:

* Bash shell
* Home directory
* Membership in the `sysops` group

The playbook completed successfully:

```text
ok=2 changed=1 failed=0
```

## Verification

The user account was verified with:

```bash
id syscorebot
```

The account was a member of the `sysops` group.

The account information was verified with:

```bash
getent passwd syscorebot
```

The home directory and Bash shell were confirmed.

## Idempotency

The same playbook was executed a second time.

The result was:

```text
ok=2 changed=0 failed=0
```

This demonstrated that Ansible did not make unnecessary changes when the desired user state already existed.

## Cleanup

The temporary test user was removed using the Ansible `user` module with:

```yaml
state: absent
remove: true
```

The account and its home directory were successfully removed.

## Automation Workflow

```text
Define User
    ↓
Create User
    ↓
Configure Groups and Shell
    ↓
Verify Account
    ↓
Test Idempotency
    ↓
Remove Test User
```
