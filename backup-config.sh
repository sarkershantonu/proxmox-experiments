#!/bin/bash

set -e
set -u
# you should change based on where you want to store this 
REPO_PATH="/backups/configs/proxmox/"

# copy all files from filelist.txt, excluding comments, recreate all paths on target directory
grep -e '^[^#]' "$REPO_PATH/filelist.txt" | xargs cp --parents --target-directory "$REPO_PATH"

echo "Completed."
