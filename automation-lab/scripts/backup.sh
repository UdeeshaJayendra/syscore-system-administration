#!/bin/bash

# SysCore automated backup script

SOURCE="backup-lab/source"
BACKUP_DIR="backup-lab/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/syscore-backup-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" -C "$SOURCE" .

echo "===== SysCore Backup ====="
echo "Source: $SOURCE"
echo "Backup: $BACKUP_FILE"
echo "Status: Backup completed successfully"
echo "=========================="
