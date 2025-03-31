cat <<EOT >> ~/.tmux.conf
# Definir cor da barra de status
set -g status-bg black
set -g status-fg white
set -g status-left '#[bg=green] #S #[default]'
set -g status-right '#[fg=yellow] %H:%M %d-%b-%y #[default]'
set -g default-terminal "tmux-256color"
set-option -g default-shell /bin/zsh
set -ag terminal-overrides ",xterm-256color:RGB"
EOT
