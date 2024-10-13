# Arch Linux Installation Script

This repository contains a collection of shell scripts to automate the setup of a new Arch Linux installation with GNOME desktop environment. The script is designed to save time by automating the installation of essential configurations and packages after a fresh installation of Arch Linux.

## My Personal Opinion
> I threw this together pretty quickly with a mix of ChatGPT and my own efforts. The scripts work well, but there are a few quirks. For instance, you'll still need to run `PackerSync` in Neovim even after the script finishes. Also, everything is based on a GNOME setup with a US International keyboard, which, let's be honest, isn't exactly the most elegant choice. If you decide to use this setup, feel free to adapt it to your preferences and enjoy! My endless Googling every time I wanted to set up Arch on an old PC has been drastically reduced thanks to this repo. Bye!

## Files

- `main.sh`: The main script that sources all the configuration files.
- `basic.sh`: Script that installs basic system configurations and essential packages.
- `neovscode.sh`: Neovim setup and plugin installation.
- `zshouse.sh`: Zsh installation and setup (oh-my-zsh, plugins, themes).
- `tmuxor.sh`: Configures Tmux with custom settings.
- `alacry.sh`: Sets up Alacritty as the terminal emulator.
- `suckthings.sh`: Miscellaneous configurations and additional setup steps for tools commonly used on Arch Linux.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/GabrielSpdf/CLI-Joker
   ```
2. Navigate to the repository directory:
    ```bash
    cd CLI-Joker
    ```
3. Make the main script executable:
    ```bash
    chmod +x main.sh
    ```
4. Run the script:
    ```bash
    ./main.sh
    ```
