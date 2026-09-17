# Permission Failure Troubleshooting

## Scenario

A controlled file-permission failure was simulated using a test file owned by `udeesha`.

## Investigation

The test file initially had:

```text
-rw------- 1 udeesha udeesha
```

The `600` permission allowed only the file owner to read and write the file.

When `sysadmin` attempted to read the file:

```bash
sudo -u sysadmin cat troubleshooting-lab/permissions/test-file.txt
```

the result was:

```text
Permission denied
```

The `sysadmin` account was then checked and confirmed to be a member of the `sysops` group.

## Diagnosis

The file was owned by `udeesha:udeesha` and had permission `600`.

Therefore, members of the `sysops` group had no permission to read the file.

## Resolution

The group ownership was changed to `sysops`:

```bash
sudo chgrp sysops troubleshooting-lab/permissions/test-file.txt
```

The file permissions were changed from `600` to `640`:

```bash
chmod 640 troubleshooting-lab/permissions/test-file.txt
```

The final permissions were:

```text
-rw-r----- 1 udeesha sysops
```

This allowed the owner to read and write the file and members of the `sysops` group to read it.

## Verification

The `sysadmin` user successfully accessed the file:

```bash
sudo -u sysadmin cat troubleshooting-lab/permissions/test-file.txt
```

Result:

```text
SysCore permission troubleshooting test
```

## Troubleshooting Process

```text
Check Permissions
       ↓
Check Ownership
       ↓
Check User Groups
       ↓
Identify Permission Problem
       ↓
Correct Group Ownership
       ↓
Grant Group Read Access
       ↓
Test Access
```
