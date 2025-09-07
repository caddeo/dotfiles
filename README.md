# Home setup
Simple setup I use at home when programming, mostly in rust or golang. 

- Ghostty along with oh-my-zsh as my standard terminal
- neovim as the editor for mainly rust and golang

# Setup
Setup using [yadm](https://yadm.io/)
Can use most [git commands](https://yadm.io/docs/common_commands#) 

## Cloning
`yadm clone git@github.com:caddeo/dotfiles.git` 

`yadm status` 

## Adding changes 
`yadm add {path-to-add}`  

`yadm commit`

`yadm push -u origin master:main`  

## Includes
- [nvim](https://neovim.io/)
- [oh-my-zsh](https://ohmyz.sh/)
- [ghostty](https://ghostty.org/)

## Todo 
- Redo my zsh setup
- Include vscode profile (used for C#.. change to neovim soon?)
- Include bootstrapping
- Include WSL work setup for both neovim + vscode (I run a wsl setup for neovim and another for vscode)
- Add oh-my-zsh plugins (need to redo my config first)
- Remap [Lazyvim Keymaps](https://www.lazyvim.org/keymaps) from US keyboard to DK keyboard (..or use US keyboard? 🤔) - awkward keybinds that includes `[` `]` `@` `£` `$` `{` `}` `|` `^` `"` 
