echo "Update system and installing basic packages"

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git neovim alacritty bitwarden zsh tmux htop wget curl firefox python python-pip docker nodejs npm zip xdotool discord uv

echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si --noconfirm
cd ..
rm -rf ~/yay

echo "Installing AUR packages"
yay -S --noconfirm spotify 


