#!/bin/bash

# Backup directory
BACKUP_DIR="/home/nikhil/backups"
TIMESTAMP=$(TZ='Asia/Kolkata' date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

# Backup application code
tar -czf "$BACKUP_DIR/code_backup_$TIMESTAMP.tar.gz" /home/nikhil/k8s-three-tier-demo

echo "Backup completed at $TIMESTAMP"
