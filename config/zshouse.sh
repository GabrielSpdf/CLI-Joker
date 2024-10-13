echo "Setting zsh as default shell"
chsh -s $(which zsh)

echo "Configuring Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

cat <<EOT >> ~/.zshrc
# Zinit plugins
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
EOT

mkdir -p ~/.fonts
wget -P ~/.fonts 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/BitstreamVeraSansMono.zip'

unzip ~/.fonts/BitstreamVeraSansMono.zip -d ~/.fonts
fc-cache -fv

sudo pacman -S --noconfirm ttf-fira-code

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo "Configuring Powerlevel10k in .zshrc..."
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

echo "Powerlevel10k installed and configured. Run 'p10k configure' to customize."
echo "Zsh setup complete! Restart the terminal or source ~/.zshrc to apply changes."

