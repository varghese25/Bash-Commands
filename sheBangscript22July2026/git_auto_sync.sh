#!/bin/bash

# ===== Configuration =====
REPO_DIR=""$HOME/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026"   # Change this to your Git repository
BRANCH="main"                         # Change if your branch is different
LOGFILE="$HOME/git_auto_sync.log"

cd "$REPO_DIR" || exit 1

echo "Git Auto Sync Started..."

while true
do
    echo "======================================" >> "$LOGFILE"
    echo "$(date)" >> "$LOGFILE"

    # Check if local changes exist
    if [[ -n $(git status --porcelain) ]]; then
        echo "Local changes detected." >> "$LOGFILE"

        git add .

        git commit -m "Auto backup $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOGFILE" 2>&1
    else
        echo "No local changes." >> "$LOGFILE"
    fi

    # Fetch latest changes
    git fetch origin >> "$LOGFILE" 2>&1

    # Pull remote changes
    git pull --rebase origin "$BRANCH" >> "$LOGFILE" 2>&1

    # Push local commits
    git push origin "$BRANCH" >> "$LOGFILE" 2>&1

    echo "Waiting 1 hour..."
    sleep 3600
done
