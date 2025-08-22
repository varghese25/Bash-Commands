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

