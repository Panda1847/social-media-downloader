#!/bin/bash
# Termux Setup Script for Social Media Downloader
# Run this first on your Android phone in Termux

echo "================================================"
echo "Social Media Downloader - Termux Setup"
echo "================================================"
echo ""
echo "This will install all necessary tools..."
echo ""

# Update packages
echo "[1/6] Updating Termux packages..."
pkg update -y && pkg upgrade -y

# Install Python
echo "[2/6] Installing Python..."
pkg install python -y

# Install git
echo "[3/6] Installing git..."
pkg install git -y

# Install required tools
echo "[4/6] Installing wget and other utilities..."
pkg install wget curl -y

# Install Python packages
echo "[5/6] Installing gallery-dl and instaloader..."
# Note: In Termux, 'pip install --upgrade pip' can sometimes cause issues.
# We install the core tools directly.
pip install gallery-dl instaloader requests yt-dlp

# Create directories
echo "[6/6] Creating download directories..."
mkdir -p ~/Downloads/social_media

echo ""
echo "================================================"
echo "✅ Setup Complete!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Run: chmod +x *.sh"
echo "2. Run: ./social_media_downloader.sh"
echo ""
