# Home setup
Simple setup I use at home when programming, mostly in rust or golang. 

- Ghostty along with oh-my-zsh as my standard terminal
- neovim as the editor for mainly rust and golang
- tmux for session and window management (especially inside neovim)

[My neovim setup](https://github.com/caddeo/kickstart.nvim) is using kickstart.nvim for now, using custom keybinds and with some custom plugins like
- [oil.nvim](https://github.com/stevearc/oil.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)

# Setup
Setup using [yadm](https://yadm.io/)
Can use most [git commands](https://yadm.io/docs/common_commands#) 

## Cloning
`yadm clone git@github.com:caddeo/dotfiles.git`
`yadm status`

## Adding changes 
Run`yadm add` `{path-to-add}` 
`yadm commit`
`yadm push -u origin master:main`

## Includes
- [nvim](https://neovim.io/)
- [oh-my-zsh](https://ohmyz.sh/)
- [ghostty](https://ghostty.org/)
- [tmux](https://github.com/tmux/tmux/wiki)

## Todo 
- Include nvim config and plugins properly
- Redo my zsh setup
- Include vscode profile (used for C#.. change to neovim soon?)
- Include bootstrapping
- Include WSL work setup for both neovim + vscode (I run a wsl setup for neovim and another for vscode)
- Add oh-my-zsh plugins (need to redo my config first)
