
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







