#!/usr/bin/env bash

set -euo pipefail

log() {
    printf '\n==> %s\n' "$1"
}

log "Updating package lists"
sudo apt update

log "Installing base packages"
sudo apt install -y \
    git \
    vim \
    curl \
    wget \
    ca-certificates \
    build-essential \
    python3 \
    python3-pip \
    pipx \
    tree \
    ripgrep \
    

log "Ensuring pipx is on PATH"
pipx ensurepath


log "Done"
echo "Logout/login once so pipx PATH changes become active."
