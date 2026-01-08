#!/usr/bin/bash

# ===========================================
# Fahim Banner Creator
# Developer: Foysal Ebne Fahim
# GitHub: https://github.com/foysal0078/Fahim-Banner-Customizer
# Version: 1.0
# ===========================================

clear

# Colors for output
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Banner for the tool
echo -e "${CYAN}"
cat << "EOF"

███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗
██╔════╝██╔══██╗██║  ██║██║████╗ ████║
█████╗  ███████║███████║██║██╔████╔██║
██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║
██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝
                                      
██████╗  █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ 
██╔══██╗██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗
██████╔╝███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██╔══██╗██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
██████╔╝██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
EOF
echo -e "${YELLOW}        Custom Banner Creator Tool${RESET}"
echo -e "${GREEN}    Developer: Foysal Ebne Fahim${RESET}"
echo -e "${BLUE}    GitHub: https://github.com/foysal0078/Fahim-Banner-Creator${RESET}"
echo -e "${PURPLE}════════════════════════════════════════════════════${RESET}"
echo

# Function to display main menu
main_menu() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"

███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗
██╔════╝██╔══██╗██║  ██║██║████╗ ████║
█████╗  ███████║███████║██║██╔████╔██║
██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║
██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝
                                      
EOF
    echo -e "${YELLOW}        Main Menu${RESET}"
    echo -e "${PURPLE}════════════════════════════════════${RESET}"
    echo -e "${GREEN}[1]${RESET} Create Custom Login System"
    echo -e "${GREEN}[2]${RESET} View Current Configuration"
    echo -e "${GREEN}[3]${RESET} Reset to Default"
    echo -e "${GREEN}[4]${RESET} Preview Login Screen"
    echo -e "${GREEN}[5]${RESET} Exit"
    echo -e "${PURPLE}════════════════════════════════════${RESET}"
    read -p "$(echo -e "${YELLOW}Select option [1-5]: ${RESET}")" choice
    
    case $choice in
        1) create_login ;;
        2) view_config ;;
        3) reset_default ;;
        4) preview_login ;;
        5) exit_tool ;;
        *) echo -e "${RED}Invalid option!${RESET}"; sleep 1; main_menu ;;
    esac
}

# Function to create custom login system
create_login() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════╗
║       Create Custom Login System         ║
╚══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
    
    # Get username
    echo -e "${YELLOW}Set up your login credentials${RESET}"
    echo -e "${PURPLE}─────────────────────────────────${RESET}"
    read -p "$(echo -e "${GREEN}[+]${RESET} Enter username for login: ${YELLOW}")" username
    echo -en "${RESET}"
    
    # Get password
    read -sp "$(echo -e "${GREEN}[+]${RESET} Enter password for login: ${YELLOW}")" password
    echo -e "${RESET}"
    
    # Get shell name
    echo
    read -p "$(echo -e "${GREEN}[+]${RESET} Enter your shell name: ${YELLOW}")" shell_name
    echo -en "${RESET}"
    
    # Get custom banner text
    echo
    echo -e "${BLUE}Custom Banner Options:${RESET}"
    echo -e "${PURPLE}──────────────────────${RESET}"
    read -p "$(echo -e "${GREEN}[+]${RESET} Enter custom banner text (or press enter for default): ${YELLOW}")" custom_banner
    echo -en "${RESET}"
    
    # If no custom banner, use default
    if [ -z "$custom_banner" ]; then
        custom_banner="Fahim Terminal"
    fi
    
    # Apply the custom login system
    apply_custom_login "$username" "$password" "$shell_name" "$custom_banner"
}

# Function to apply custom login
apply_custom_login() {
    local username="$1"
    local password="$2"
    local shell_name="$3"
    local banner_text="$4"
    
    echo
    echo -e "${YELLOW}Applying custom configuration...${RESET}"
    
    # Backup original files
    if [ ! -f ~/bash.bashrc.backup ]; then
        cp $PREFIX/etc/bash.bashrc ~/bash.bashrc.backup
    fi
    if [ -f $PREFIX/etc/motd ]; then
        cp $PREFIX/etc/motd ~/motd.backup
    fi
    
    # Create the custom bash.bashrc
    cat > $PREFIX/etc/bash.bashrc << LOGIN
trap '' 2

# Clear screen
clear

# Display custom banner
echo -e "\033[1;32m"
echo -e "╔══════════════════════════════════════════════════════════════╗"
echo -e "║                                                              ║"
echo -e "║  ███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗                     ║"
echo -e "║  ██╔════╝██╔══██╗██║  ██║██║████╗ ████║                     ║"
echo -e "║  █████╗  ███████║███████║██║██╔████╔██║                     ║"
echo -e "║  ██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║                     ║"
echo -e "║  ██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║                     ║"
echo -e "║  ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝                     ║"
echo -e "║                                                              ║"
echo -e "║                    $banner_text                              ║"
echo -e "╚══════════════════════════════════════════════════════════════╝"
echo -e "\033[0m"
echo
echo -e "\033[1;33m           ──────────────────────────────"
echo -e "\033[1;36m               Login To Continue"
echo -e "\033[1;33m           ──────────────────────────────\033[0m"
echo

# Login system
read -p \$'\033[1;32m[+] \033[1;37mUsername: \033[1;36m' user
read -sp \$'\033[1;32m[+] \033[1;37mPassword: \033[1;36m' pass
echo -e "\033[0m"

if [[ \$pass == "$password" && \$user == "$username" ]]; then
    # Play success sound if available
    if [ -f ~/success.mp3 ] && command -v termux-media-player >/dev/null 2>&1; then
        termux-media-player play ~/success.mp3 2>/dev/null &
    fi
    
    sleep 1
    clear
    
    # Welcome message
    echo -e "\033[1;32m"
    echo -e "╔══════════════════════════════════════════════════════════════╗"
    echo -e "║                                                              ║"
    echo -e "║  Welcome back, \033[1;36m$user\033[1;32m!                                 ║"
    echo -e "║                                                              ║"
    echo -e "║  Developer: \033[1;33mFoysal Ebne Fahim\033[1;32m                        ║"
    echo -e "║  GitHub: \033[1;34mhttps://github.com/foysal0078\033[1;32m               ║"
    echo -e "║                                                              ║"
    echo -e "╚══════════════════════════════════════════════════════════════╝"
    echo -e "\033[0m"
    echo
    echo -e "\033[1;33m     ┌─────────────────────────────────────────────┐"
    echo -e "\033[1;33m     │  Terminal session started successfully!    │"
    echo -e "\033[1;33m     └─────────────────────────────────────────────┘\033[0m"
    echo
    sleep 2
    clear
    
    # Set custom PS1
    PS1='\[\033[1;32m\]┌─[\[\033[1;37m\]\T\[\033[1;32m\]]───[\[\033[1;36m\]$shell_name\[\033[1;32m\]]───[\[\033[1;35m\]\#\[\033[1;32m\]]\n\[\033[1;32m\]└─[\[\033[1;33m\]\W\[\033[1;32m\]]──►\[\033[1;37m\] '
    
    # Aliases
    alias ls='ls --color=auto'
    alias ll='ls -la'
    alias update='apt update && apt upgrade'
    alias fbanner='cd ~/Fahim-Banner && bash fahim-banner.sh'
    
    # Welcome message
    echo -e "\033[1;35m"
    cat << "EOF"
╔══════════════════════════════════════════════════════════════╗
║                                                              ║
║  ███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗                     ║
║  ██╔════╝██╔══██╗██║  ██║██║████╗ ████║                     ║
║  █████╗  ███████║███████║██║██╔████╔██║                     ║
║  ██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║                     ║
║  ██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║                     ║
║  ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝                     ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝
EOF
    echo -e "\033[1;32m        Welcome to Fahim Custom Terminal\033[0m"
    echo -e "\033[1;33m        Shell: $shell_name\033[0m"
    echo -e "\033[1;34m        User: $user\033[0m"
    echo
else
    echo
    echo -e "\033[1;31m[!] Invalid credentials! Access denied.\033[0m"
    sleep 2
    # You can add a command here for wrong attempts
    # For example: exit, or clear and show login again
    clear
    exec bash
fi

trap 2
LOGIN

    # Remove motd if exists
    rm -f $PREFIX/etc/motd
    
    echo -e "${GREEN}[+]${RESET} Custom login system applied successfully!"
    echo -e "${GREEN}[+]${RESET} Username: ${YELLOW}$username${RESET}"
    echo -e "${GREEN}[+]${RESET} Shell Name: ${YELLOW}$shell_name${RESET}"
    echo -e "${GREEN}[+]${RESET} Banner Text: ${YELLOW}$banner_text${RESET}"
    echo
    echo -e "${YELLOW}Note: ${RESET}Please exit and restart Termux to see changes."
    echo
    read -p "$(echo -e "${GREEN}Press Enter to continue...${RESET}")"
    main_menu
}

# Function to view current configuration
view_config() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════╗
║        Current Configuration             ║
╚══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
    
    echo -e "${YELLOW}Checking configuration...${RESET}"
    echo
    
    # Check if custom configuration exists
    if grep -q "Fahim Custom Terminal" $PREFIX/etc/bash.bashrc 2>/dev/null; then
        echo -e "${GREEN}[+]${RESET} Custom login is ${GREEN}enabled${RESET}"
        echo
        
        # Try to extract username
        username_line=$(grep -n "pass ==" $PREFIX/etc/bash.bashrc | head -1)
        if [ ! -z "$username_line" ]; then
            username=$(sed -n "${username_line}p" $PREFIX/etc/bash.bashrc | sed "s/.*\$user == \"//;s/\".*//")
            echo -e "${GREEN}[+]${RESET} Username: ${YELLOW}$username${RESET}"
        fi
        
        # Try to extract shell name
        shell_line=$(grep -n "PS1.*shell_name" $PREFIX/etc/bash.bashrc | head -1)
        if [ ! -z "$shell_line" ]; then
            shell_name=$(sed -n "${shell_line}p" $PREFIX/etc/bash.bashrc | sed "s/.*\$shell_name\[\]/\$shell_name/;s/\[\].*//" | sed "s/.*\[\]//;s/\[\].*//")
            echo -e "${GREEN}[+]${RESET} Shell Name: ${YELLOW}$shell_name${RESET}"
        fi
        
        echo -e "${GREEN}[+]${RESET} Configuration file: ${YELLOW}$PREFIX/etc/bash.bashrc${RESET}"
        echo -e "${GREEN}[+]${RESET} Backup file: ${YELLOW}~/bash.bashrc.backup${RESET}"
    else
        echo -e "${RED}[!]${RESET} Custom login is ${RED}not enabled${RESET}"
        echo -e "${YELLOW}[*]${RESET} Using default Termux configuration"
    fi
    
    echo
    echo -e "${PURPLE}════════════════════════════════════════════════════${RESET}"
    echo
    read -p "$(echo -e "${GREEN}Press Enter to continue...${RESET}")"
    main_menu
}

# Function to reset to default
reset_default() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════╗
║         Reset to Default                 ║
╚══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
    
    echo -e "${YELLOW}Are you sure you want to reset to default configuration?${RESET}"
    echo -e "${RED}This will remove the custom login system.${RESET}"
    echo
    read -p "$(echo -e "${YELLOW}Type 'yes' to confirm: ${RESET}")" confirm
    
    if [ "$confirm" == "yes" ]; then
        if [ -f ~/bash.bashrc.backup ]; then
            cp ~/bash.bashrc.backup $PREFIX/etc/bash.bashrc
            echo -e "${GREEN}[+]${RESET} Successfully restored default configuration!"
        else
            # Create default bash.bashrc
            cat > $PREFIX/etc/bash.bashrc << DEFAULT
#!/data/data/com.termux/files/usr/bin/bash
# Default Termux bash.bashrc

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -la'
alias update='apt update && apt upgrade'

# Default PS1
PS1='\[\e[0;32m\]└─\[\e[0m\e[0;32m\] [\[\e[0m\] \t \[\e[0;32m\]]─────\e[0m \[\e[0;93m\]\w\[\e[0m\] \n \[\e[0;32m\]└─\[\e[0;32m\] [\[\e[0m\]\$\[\e[0;32m\]]────\e[0m '
DEFAULT
            echo -e "${GREEN}[+]${RESET} Created default configuration!"
        fi
        
        # Restore motd if backup exists
        if [ -f ~/motd.backup ]; then
            cp ~/motd.backup $PREFIX/etc/motd
        fi
        
        echo -e "${GREEN}[+]${RESET} Please restart Termux to see changes."
    else
        echo -e "${YELLOW}[*]${RESET} Reset cancelled."
    fi
    
    echo
    read -p "$(echo -e "${GREEN}Press Enter to continue...${RESET}")"
    main_menu
}

# Function to preview login screen
preview_login() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════╗
║        Preview Login Screen              ║
╚══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
    
    echo -e "${YELLOW}Login Screen Preview:${RESET}"
    echo -e "${PURPLE}──────────────────────${RESET}"
    echo
    
    # Simulate login screen
    echo -e "\033[1;32m"
    echo -e "╔══════════════════════════════════════════════════════════════╗"
    echo -e "║                                                              ║"
    echo -e "║  ███████╗ █████╗ ██╗  ██╗██╗███╗   ███╗                     ║"
    echo -e "║  ██╔════╝██╔══██╗██║  ██║██║████╗ ████║                     ║"
    echo -e "║  █████╗  ███████║███████║██║██╔████╔██║                     ║"
    echo -e "║  ██╔══╝  ██╔══██║██╔══██║██║██║╚██╔╝██║                     ║"
    echo -e "║  ██║     ██║  ██║██║  ██║██║██║ ╚═╝ ██║                     ║"
    echo -e "║  ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝                     ║"
    echo -e "║                                                              ║"
    echo -e "║                    Fahim Terminal                            ║"
    echo -e "╚══════════════════════════════════════════════════════════════╝"
    echo -e "\033[0m"
    echo
    echo -e "\033[1;33m           ──────────────────────────────"
    echo -e "\033[1;36m               Login To Continue"
    echo -e "\033[1;33m           ──────────────────────────────\033[0m"
    echo
    echo -e "\033[1;32m[+] \033[1;37mUsername: \033[1;36m[preview_user]"
    echo -e "\033[1;32m[+] \033[1;37mPassword: \033[1;36m********"
    echo -e "\033[0m"
    echo
    echo -e "${YELLOW}This is how your login screen will appear.${RESET}"
    echo
    read -p "$(echo -e "${GREEN}Press Enter to continue...${RESET}")"
    main_menu
}

# Function to exit tool
exit_tool() {
    clear
    echo -e "${CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════╗
║             Thank You!                   ║
╚══════════════════════════════════════════╝
EOF
    echo -e "${RESET}"
    echo -e "${GREEN}Thank you for using Fahim Banner Creator!${RESET}"
    echo -e "${YELLOW}Developer: Foysal Ebne Fahim${RESET}"
    echo -e "${BLUE}GitHub: https://github.com/foysal0078/Fahim-Banner-Creator${RESET}"
    echo
    echo -e "${PURPLE}Have a great day! 👋${RESET}"
    echo
    exit 0
}

# Install required packages if needed
check_dependencies() {
    echo -e "${YELLOW}Checking dependencies...${RESET}"
    
    # Check if bash is available
    if ! command -v bash &> /dev/null; then
        echo -e "${RED}[!]${RESET} bash is not installed!"
        exit 1
    fi
    
    echo -e "${GREEN}[+]${RESET} All dependencies are satisfied."
    sleep 1
}

# Create installation directory and files
setup_environment() {
    # Create Fahim-Banner directory
    if [ ! -d ~/Fahim-Banner ]; then
        mkdir ~/Fahim-Banner
    fi
    
    # Copy script to Fahim-Banner directory
    cp $0 ~/Fahim-Banner/fahim-banner.sh
    chmod +x ~/Fahim-Banner/fahim-banner.sh
    
    # Create a README file
    cat > ~/Fahim-Banner/README.md << README
# Fahim Banner Creator

A customizable banner and login system creator for Termux.

## Features
- Custom login system with username/password
- Customizable banner text
- Custom shell prompt
- Easy configuration
- Reset to default functionality

## Usage
Run the script:
\`\`\`bash
cd ~/Fahim-Banner
./fahim-banner.sh
\`\`\`

## Developer
Foysal Ebne Fahim

## GitHub
https://github.com/foysal0078/Fahim-Banner-Creator

## Version
1.0
README
}

# Main execution
echo -e "${GREEN}Initializing Fahim Banner Creator...${RESET}"
check_dependencies
setup_environment

# Create alias for easy access
if ! grep -q "alias fbanner" ~/.bashrc 2>/dev/null; then
    echo "alias fbanner='cd ~/Fahim-Banner && bash fahim-banner.sh'" >> ~/.bashrc
    echo -e "${GREEN}[+]${RESET} Alias 'fbanner' created for easy access."
    echo -e "${YELLOW}[*]${RESET} Restart Termux or run: source ~/.bashrc"
fi

sleep 2
main_menu
