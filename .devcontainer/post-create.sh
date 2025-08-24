#!/bin/bash
set -e

echo "🚀 Setting up Azure MCP development environment..."

# Update package lists
sudo apt-get update

# Install additional tools
sudo apt-get install -y curl wget git unzip

# Install Azure Functions Core Tools
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/dotnetdev.list
sudo apt-get update
sudo apt-get install -y azure-functions-core-tools-4

# Install .NET tools
dotnet tool install -g --no-cache --ignore-failed-sources Microsoft.dotnet-interactive
dotnet tool install -g --no-cache --ignore-failed-sources PowerShell

# Add .NET tools to PATH
export PATH="$PATH:/home/vscode/.dotnet/tools"

# Install Node.js global packages
npm install -g @azure/static-web-apps-cli
npm install -g azure-functions-core-tools@4

# Install Azure Bicep
curl -Lo bicep https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64
chmod +x ./bicep
sudo mv ./bicep /usr/local/bin/bicep

# Set up git configuration
git config --global init.defaultBranch main
git config --global pull.rebase false

# Create workspace directories
mkdir -p /workspaces/azure-mcp/{src,tests,docs}

echo "✅ Azure MCP development environment setup complete!"
echo "📋 Available tools:"
echo "  - .NET 9.0 SDK"
echo "  - Node.js 20"
echo "  - Azure CLI"
echo "  - Azure Functions Core Tools"
echo "  - Azure Static Web Apps CLI"
echo "  - Azure Bicep"
echo "  - PowerShell"
echo ""
echo "🎯 Ready to start developing Azure MCP applications!"
