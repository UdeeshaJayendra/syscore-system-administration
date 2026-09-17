# Backup Administration

## Overview

This lab demonstrates basic Linux backup and restore administration using `tar`.

The backup process includes:

- Creating backup source data
- Creating a compressed backup archive
- Inspecting the backup archive
- Restoring the backup
- Comparing original and restored files
- Verifying file integrity using SHA-256

## Backup Lab Structure

```text
backup-lab/
├── source/
│   ├── server-config.txt
│   └── users.txt
├── backups/
│   └── syscore-backup-01.tar.gz
└── restore/
    ├── server-config.txt
    └── users.txt
