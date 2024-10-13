mkdir -p ~/.config/alacritty
cat <<EOT >> ~/.config/alacritty/alacritty.toml
# Configurações do Alacritty em TOML

[window]
padding = { x = 10, y = 10 }
dynamic_padding = true
decorations = "full"

[font]
normal = { family = "Fira Code" }
size = 12.0

[colors]
[colors.primary]
background = "0x282a36"
foreground = "0xf8f8f2"

[colors.normal]
black   = "0x21222c"
red     = "0xff5555"
green   = "0x50fa7b"
yellow  = "0xf1fa8c"
blue    = "0xbd93f9"
magenta = "0xff79c6"
cyan    = "0x8be9fd"
white   = "0xf8f8f2"

[shell]
program = "/usr/bin/zsh"
EOT

