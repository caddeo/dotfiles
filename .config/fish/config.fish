# Unset the default fish greeting text which messes up Zellij
set fish_greeting

fish_config theme choose cyberdream

fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
set fish_cursor_external line
set fish_cursor_visual block

set -gx TERM xterm-256color
set -gx TERMINAL ghostty

# aliases
alias g git
alias k="kubectl"
alias yup="yadm pull && yadm alt && hyprctl reload"

set -gx EDITOR nvim

# Path configuration (using fish_add_path for automatic deduplication and safe prepending)
set -g GOPATH $HOME/go
set -g KREW_ROOT $HOME/.krew
fish_add_path bin ~/bin ~/.local/bin $GOPATH/bin $KREW_ROOT/bin

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

tv init fish | source
~/.local/bin/mise activate fish | source
direnv hook fish | source

abbr -a -- fish-reload-config 'source ~/.config/fish/**/*.fish'
