#Run this ollama installation script on any linux terminal
#!/bin/bash

set -e

echo "Installing Ollama..."

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Start Ollama service
sudo systemctl enable --now ollama

# Download a lightweight model
ollama pull qwen2.5:3b

# Verify installation
echo "Testing Ollama..."

ollama run qwen2.5:3b "Explain artificial intelligence in one sentence."

echo "Ollama installation complete!"
