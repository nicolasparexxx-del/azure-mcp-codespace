# Azure MCP Codespace

A fully configured development environment for building Azure MCP (Model Context Protocol) applications.

## Features

- **Pre-configured Environment**: Includes all necessary tools and dependencies
- **Azure Integration**: Full Azure CLI, Functions, and Static Web Apps support
- **Multi-language Support**: .NET 9.0, Node.js 20, Python 3.12
- **Development Tools**: Git, Docker, PowerShell, and more

## Quick Start

1. **Open in Codespaces**: Click "Code" → "Open with Codespaces" in GitHub
2. **Wait for Setup**: The post-create script will automatically install all tools
3. **Start Developing**: Your environment is ready to use!

## Included Tools

### Azure Tools
- Azure CLI (latest)
- Azure Functions Core Tools v4
- Azure Static Web Apps CLI
- Azure Bicep (Infrastructure as Code)

### Development Tools
- .NET 9.0 SDK
- Node.js 20.x with npm
- Python 3.12
- Git with pre-configured settings
- Docker CLI
- PowerShell Core

### VS Code Extensions
- Azure Account
- Azure Functions
- Azure Static Web Apps
- C# Dev Kit
- Python
- Docker

## Usage Examples

### Create a new Azure Function
```bash
func init MyFunctionApp --dotnet
cd MyFunctionApp
func new --name HttpExample --template "HTTP trigger"
```

### Deploy to Azure Static Web Apps
```bash
swa init
swa deploy
```

### Use Azure CLI
```bash
az login
az group create --name myResourceGroup --location eastus
```

## Customization

The environment can be customized by modifying:
- `.devcontainer/devcontainer.json` - Container configuration
- `.devcontainer/post-create.sh` - Post-setup script

## Troubleshooting

If you encounter issues:
1. Check the post-create script output in the terminal
2. Verify tools are installed: `az --version`, `func --version`
3. Rebuild the container if needed: Command Palette → "Codespaces: Rebuild Container"

## Support

Cybersecurity, Kali Linux, Ethical Hacking, Penetration Testing, Red Team, Nmap, Metasploit, Wireshark, NetHunter, Active Directory, MITRE ATT&CK, BLE, C2, Smartwatch Hacking, Automotive Exploitation, Linux CLI, Docker, OpenVAS, Security Tools

---

## 🔄 Continual Learning

Kali GPT continuously integrates updates to stay current with:
- Offensive and defensive cybersecurity trends
- Kali Linux toolsets and system changes
- Ethical hacking methodologies and compliance frameworks
