fish_config theme choose default-rgb

alias argo_ui="kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d | pbcopy && kubectl -n argocd port-forward svc/argocd-server 8080:80 & sleep 2 && open http://localhost:8080 && fg"

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "eza -l -a -g --icons"
end

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
