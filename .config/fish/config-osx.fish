if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij
eval (zellij setup --generate-auto-start fish | string collect)

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
