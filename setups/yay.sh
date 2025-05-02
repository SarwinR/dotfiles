#!/bin/bash

# Exit immediately on any error
set -e

# Clean up old folder if it exists
sudo rm -rf /tmp/yay

# Install yay
echo "Cloning yay AUR repository..."
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay

echo "Building and installing yay..."
makepkg -si --noconfirm

echo "Cleaning up..."
cd ~
rm -rf /tmp/yay

echo "yay installation complete."