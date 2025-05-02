#!/bin/bash
set -e

# Step 1: Install VSCode using yay
if ! command -v code &>/dev/null; then
    echo "Installing Visual Studio Code..."
    yay -S visual-studio-code-bin --noconfirm
else
    echo "VSCode is already installed."
fi

# Step 2: Copy configuration files
CONFIG_SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")/../configs/vscode" && pwd)"
CONFIG_TARGET="$HOME/.vscode"

echo "Copying VSCode configuration from $CONFIG_SOURCE to $CONFIG_TARGET..."

mkdir -p "$CONFIG_TARGET"
cp -r "$CONFIG_SOURCE"/* "$CONFIG_TARGET/"

echo "VSCode installation and configuration complete."