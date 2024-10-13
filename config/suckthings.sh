echo "Setting Super+D to hide all normal windows"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

# Creating a custom keybinding to open Alacritty with Ctrl+Alt+T
echo "Binding Ctrl+Alt+T to open Alacritty"

# Define the command for opening Alacritty
alacritty_command="/usr/bin/alacritty"

# Check if Alacritty exists in the expected location
if [ ! -f "$alacritty_command" ]; then
    echo "Alacritty not found at $alacritty_command. Please install Alacritty or update the path."
    exit 1
fi

# Set a custom keybinding for Alacritty
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[\"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/\"]"

# Set the binding path
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Open Alacritty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "$alacritty_command"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt>t'

echo "Ctrl+Alt+T is now bound to Alacritty"

# Keyboard US-Internacional
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us+intl')]"

