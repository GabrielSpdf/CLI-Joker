mkdir -p ~/.config/nvim
git clone https://github.com/GabrielSpdf/nvim ~/.config/nvim

if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    echo "Instalando Packer para Neovim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
      ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

echo "Installing Neovim plugins"
nvim +PackerSync +qall

