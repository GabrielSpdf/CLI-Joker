#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Hello World."

echo "Installing basic configs..."
source "$DIR/config/basic.sh"

echo "Configuring Neovim..."
source "$DIR/config/neovscode.sh"

echo "Configuring Zsh..."
source "$DIR/config/zshouse.sh"

echo "Configuring Tmux..."
source "$DIR/config/tmuxor.sh"

echo "Configuring Alacritty..."
source "$DIR/config/alacry.sh"

echo "Configuring miscellaneous things on Arch..."
source "$DIR/config/suckthings.sh"
