# Fahim-Banner-Creator
A powerful Fahim Banner Creator tool for Termux and GitHub profiles 

Fahim Banner Creator

https://img.shields.io/badge/Fahim-Banner%20Creator-green
https://img.shields.io/badge/Termux-Compatible-blue
https://img.shields.io/badge/Version-1.0.0-orange
https://img.shields.io/badge/License-MIT-yellow

<p align="center">
  <img src="https://raw.githubusercontent.com/foysal0078/Fahim-Banner-Creator/main/assets/banner.png" alt="Fahim Banner Creator" width="600">
</p>

✨ Features

🎨 Custom Login System

· Secure username/password authentication
· Multiple login attempts protection
· Beautiful ASCII art login interface

🖼️ Banner Customization

· Fully customizable ASCII banners
· Colorful terminal output
· Dynamic banner text updates

🔧 Management Tools

· Easy-to-use management menu
· Backup and restore functionality
· Live configuration updates

🚀 Termux Integration

· Custom PS1 prompt
· Useful aliases and shortcuts
· Shell optimization

📦 Installation

Method 1: Quick Install (Recommended)

```bash
# One-line installation
bash -c "$(curl -fsSL https://raw.githubusercontent.com/foysal0078/Fahim-Banner-Creator/main/install.sh)"
```

Method 2: Run installer

```bash
# Step 1: Update packages
pkg update && pkg upgrade -y
```
```bash
pkg install git -y
```
```bash
git clone https://github.com/foysal0078/Fahim-Banner-Creator
```
```bash
cd Fahim-Banner
```
```bash
ls
```
```bash
bash fahim-banner.sh
```

🎯 Usage

First Time Setup

After installation, restart Termux:

```bash
exit
# Re-open Termux
```

Available Commands

```bash
# Show custom banner
banner

# Open management menu
fbanner

# Show help
help-fahim

# Update tool
update-fbanner

# Restore original settings
restore-fbanner
```

Management Menu Options

1. Show Current Banner - Display your custom banner
2. Change Login Credentials - Update username/password
3. Change Shell Name - Modify terminal prompt name
4. Update Banner Text - Change banner display text
5. Restore Original Settings - Revert to default Termux
6. Show Current Configuration - View current settings
7. Exit - Close management menu

🛠️ Configuration

Customizing Your Banner

Run the management menu and select option 4:

```bash
fbanner
# Select option 4
# Enter your new banner text
```

Changing Login Details

```bash
fbanner
# Select option 2
# Enter new username and password
```

Setting Shell Name

```bash
fbanner
# Select option 3
# Enter custom shell name (e.g., Fahim@Termux)
```

📁 File Structure

```
Fahim-Banner-Creator/
├── fahim-banner.sh          # Main installer script
├── README.md                # This documentation
├── assets/                  # Images and resources
│   └── banner.png          # Project banner
├── backups/                 # Backup files
│   └── bash.bashrc.backup  # Original configuration
└── scripts/                 # Additional scripts
    ├── banner.sh           # Custom banner display
    └── management.sh       # Management functions
```

🔧 Technical Details

Supported Platforms

· ✅ Termux (Android)
· ✅ Linux terminals
· ✅ Unix-based systems

Requirements

· Termux app (latest version)
· Basic terminal knowledge
· Internet connection (for installation)

Shell Compatibility

· Bash 4.0+
· Zsh (with bash compatibility mode)
· Other POSIX-compliant shells

🤝 Contributing

We welcome contributions! Here's how you can help:

Reporting Issues

1. Check if the issue already exists
2. Provide detailed description
3. Include steps to reproduce
4. Share error messages/screenshots

Feature Requests

1. Describe the feature clearly
2. Explain its usefulness
3. Suggest implementation approach

Code Contributions

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/Fahim-Banner-Creator.git

# Create feature branch
git checkout -b feature/your-feature

# Make changes and commit
git add .
git commit -m "Add your feature"

# Push to your fork
git push origin feature/your-feature
```

📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

```
MIT License

Copyright (c) 2024 Foysal Ebne Fahim

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

🙏 Acknowledgments

Special Thanks

· Termux Community - For amazing Android terminal
· Open Source Contributors - For inspiration and tools
· Beta Testers - For valuable feedback

Inspiration

This project was inspired by the need for:

· Better Termux customization options
· Easy-to-use banner creation tools
· Secure login systems for mobile terminals

Related Projects

· Termux-Styling
· Oh-My-Termux
· Termux-Banner

📞 Support

Documentation

· Full Documentation
· FAQ
· Troubleshooting

Community

· GitHub Discussions
· Issue Tracker
· Pull Requests

Contact Developer

· Name: Foysal Ebne Fahim
· GitHub: @foysal0078
· Email: foysalebnefahim@gmail.com
· Website: Coming Soon

📊 Statistics

https://img.shields.io/github/stars/foysal0078/Fahim-Banner-Creator
https://img.shields.io/github/forks/foysal0078/Fahim-Banner-Creator
https://img.shields.io/github/issues/foysal0078/Fahim-Banner-Creator
https://img.shields.io/github/issues-pr/foysal0078/Fahim-Banner-Creator

🔄 Changelog

Version 1.0.0 (Current)

· ✅ Initial release
· ✅ Custom login system
· ✅ Banner creation
· ✅ Management menu
· ✅ Backup/restore functionality

Version 0.9.0 (Beta)

· 🚧 Initial testing phase
· 🚧 Basic banner creation
· 🚧 Simple login system

🎨 Screenshots

Login Screen

```
╔══════════════════════════════════════════════════════════╗
║         ███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗          ║
║         ██╔════╝██╔══██╗██║  ██║██║████╗ ████║          ║
║         █████╗  ███████║███████║██║██╔████╔██║          ║
║         ██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║          ║
║         ██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║          ║
║         ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝          ║
║                                                          ║
║                    WELCOME TO TERMUX                     ║
╚══════════════════════════════════════════════════════════╝
```

Management Menu

```
╔══════════════════════════════════════════════════════════╗
║               FAHIM BANNER CREATOR - MENU               ║
╠══════════════════════════════════════════════════════════╣
║  1. Show Current Banner                                 ║
║  2. Change Login Credentials                            ║
║  3. Change Shell Name                                   ║
║  4. Update Banner Text                                  ║
║  5. Restore Original Settings                           ║
║  6. Show Current Configuration                          ║
║  7. Exit                                                ║
╚══════════════════════════════════════════════════════════╝
```

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/foysal0078">Foysal Ebne Fahim</a>
  <br>
  ⭐ Star this repo if you find it useful!
</p>
