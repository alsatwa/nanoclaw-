#!/bin/bash
# NANOCLAW RECOVERY SCRIPT
# Run this after every VPS reset to restore openclaw
# Created by Nanoclaw memory system

echo "=== NANOCLAW RECOVERY ==="
echo "Step 1: Installing Node.js 24..."
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash - > /dev/null 2>&1
sudo apt-get install -y nodejs > /dev/null 2>&1
echo "Node: $(node --version)"

echo "Step 2: Installing OpenClaw..."
sudo npm install -g openclaw@latest 2>&1 | grep -E "added|error"

echo "Step 3: Verifying..."
openclaw --version

echo ""
echo "=== DONE. OpenClaw is ready. ==="
echo "Run: openclaw onboard --install-daemon"
