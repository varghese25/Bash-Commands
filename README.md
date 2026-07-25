

# Youtube Link:
-- https://youtu.be/nF5mgnV5rHM?si=WSaFfVFb9lUNpJya
-- Watch from 1:05.34



# Updated 24July2026
# 07-25-2026 Install smmart Mirroring in my Laptop failed due to slow internet connection
# SSH Setup (GitHub)

This document explains how to set up SSH keys and use them with GitHub for `git push` / `git pull`.

## 1) Check if SSH keys exist
```bash
ls -la ~/.ssh

2) Generate an SSH key (if not exist)
bash

ssh-keygen -t ed25519 -C "your\_email@gmail.com"

    Press Enter to use the default file location
    Enter passphrase:
        Press Enter twice for no passphrase, OR
        Type a passphrase if you want extra security

3) Copy your public key
bash

cat ~/.ssh/id\_ed25519.pub

Copy the full output (single line).
4) Add the SSH key to GitHub

Go to:

    GitHub → Settings → SSH and GPG keys
    Click New SSH key
    Paste the public key and click Add SSH key

5) Test SSH connection
bash

ssh -T git@github.com

You should see a success message like:
Hi <username>! You've successfully authenticated...
6) Change your Git remote to SSH

Check current remote:
bash

git remote -v

Set remote URL to SSH:
bash

git remote set-url origin git@github.com:USERNAME/REPO.git

Verify:
bash

git remote -v

7) Push using SSH
bash

git push



# July 23 2026
# trial
# Date Sep-04-2025

# Bash mv - Move file one place to another and Same command used to Rename file
varghese@DESKTOP-OODIU93:~/Bash-Commands/testingFolder$ mv tiju.txt Renamed_To_tiju.txt # Renamd

# This line moved tiju.txt to testing folder
varghese@DESKTOP-OODIU93:~/Bash-Commands$ mv tiju.txt ../testingFolder/ 


# rm - Remove files and Directories
rm -r  Delete a folder and everything inside it
rm -i  Ask before deleting each file
rm -f  Force delete without asking
rm -v  Verbose mode, show files being removed


# touch Command - Change File Timestamps
touch -t 202509041830 Renamed_To_tiju.txt # update YYMMDDHHMM (18:30)
-a - Update only when the file was last read
-m - Update only when the file was last changed
-t - Set the timestamp to a specific time
-c - Do not create any files


# Bash cp - Copy Files and Directories

e@DESKTOP-OODIU93:~/Bash-Commands/vb_Exercise$ cp varghese_copy.txt ../testingFolder/ 📝 Vim Swap Files & Terminator Guide (Ubuntu/WSL)

---

## 1️⃣ Vim Swap Files (`.swp`)

When you edit a file with **Vim**, it creates a hidden swap file:

- Example: editing `Ex1.txt` creates `.Ex1.txt.swp`  
- Purpose:
  - Tracks unsaved changes
  - Helps recover your work if Vim crashes

### Common scenarios:

| Situation | What to do |
|-----------|------------|
| `.swp` exists, file open elsewhere | Vim warns you. Options: Recover (R), Edit Anyway (E), Open Read-only (O) |
| Unsaved changes present | Open Vim → Press `R` to recover → Save with `:wq` |
| No unsaved changes / safe to remove | Delete swap file: `rm .Ex1.txt.swp` |

**Tip:** If you accidentally delete a `.swp` file **before saving**, unsaved changes are lost. Always save frequently with `:w` or `:wq`.

---

## 2️⃣ Terminator Terminal Emulator

**Terminator** is a Linux terminal with advanced features like split panes and tabs.

### Installation
```bash
sudo apt update
sudo apt install terminator
# Launch Terminator
terminator

| Action                      | Shortcut                |
| --------------------------- | ----------------------- |
| Split terminal vertically   | `Ctrl+Shift+E`          |
| Split terminal horizontally | `Ctrl+Shift+O`          |
| Open new tab                | `Ctrl+Shift+T`          |
| Close terminal              | `Ctrl+Shift+W`          |
| Move between terminals      | `Ctrl+Shift+Arrow keys` |







# varghese@DESKTOP-OODIU93:~/Bash-Commands$


# 🚀 Ubuntu GitHub SSH Setup Guide

This guide walks through setting up **SSH authentication** for GitHub on Ubuntu/WSL, so you can push/pull without entering passwords or tokens.

---

## 📦 Prerequisites

```bash
sudo apt update
sudo apt install -y git openssh-client

# 👤 Configure Git
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
git config --list

# 🔑 Generate SSH Key
ssh-keygen -t ed25519 -C "your_email@example.com"
Press Enter to accept default path

Set passphrase (optional)

Keys will be stored in:

Private: ~/.ssh/id_ed25519

Public: ~/.ssh/id_ed25519.pub

# 🗝️ Start ssh-agent & Add Key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

Check loaded keys:
ssh-add -l


#📋 Copy Public Key
cat ~/.ssh/id_ed25519.pub
👉 Copy the entire line (starts with ssh-ed25519).

On WSL you can copy to clipboard:


clip.exe < ~/.ssh/id_ed25519.pub


# 🔧 Add Key to GitHub

Go to GitHub → Settings → SSH and GPG Keys

Click New SSH Key

Paste your copied key

Save


# 🧪 Test Connection
ssh -T git@github.com


✅ Expected:
Hi <username>! You've successfully authenticated, but GitHub does not provide shell access.



# 🌐 Use SSH for Repositories

Clone with SSH

git clone git@github.com:<username>/<repo>.git

Convert existing remote

git remote set-url origin git@github.com:<username>/<repo>.git


#📌 Workflow
git status
git add .
git commit -m "Your message"
git push


# 🛠️ Troubleshooting

Asked for password → Remote is HTTPS → Switch to SSH

git remote set-url origin git@github.com:<user>/<repo>.git


Permission denied (publickey) → Ensure key added:

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


Rejected push → Sync before pushing:

git pull --rebase origin main
git push

# 🔒 Optional Security

chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub





