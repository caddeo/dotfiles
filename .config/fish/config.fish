set fish_greeting ""

set -gx TERM xterm-256color

# theme

# aliases
alias g git
alias k="kubectl"
alias argo_ui="kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d | pbcopy && kubectl -n argocd port-forward svc/argocd-server 8080:80 & sleep 2 && open http://localhost:8080 && fg"

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

set -g KREW_ROOT $HOME/.krew
set -gx PATH $KREW_ROOT/bin $PATH

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

if set -q ZELLIJ
else
    zellij
end

starship init fish | source
~/.local/bin/mise activate fish | source

abbr -a -- fish-reload-config 'source ~/.config/fish/**/*.fish'
