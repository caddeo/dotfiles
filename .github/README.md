# dotfiles

Managed with [yadm](https://yadm.io) across three machines:

- Mac — work laptop
- CachyOS - home desktop, home laptop

## Tools

- [Ghostty](https://ghostty.org) — terminal
- [Fish](https://fishshell.com) + [Fisher](https://github.com/jorgebucaran/fisher) — shell
- [Neovim](https://neovim.io) (LazyVim) — editor
- [tmux](https://github.com/tmux/tmux) — multiplexer
- [mise](https://mise.jdx.dev) — version control
- [television](https://github.com/alexpasmantier/television) — fuzzy finder

## Setup

> Back up any existing Neovim config first:
>
> ```sh
> mv ~/.config/nvim{,.bak} && mv ~/.local/share/nvim{,.bak}
> ```

**Mac**

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm bootstrap
```

**CarchyOS**

```sh
sudo pacman -S yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm bootstrap
```

## How alternates work

Files suffixed with `##condition` are only symlinked on matching machines. Most conditions are auto-detected — only monitor layout needs a manual class:

| Suffix | Applies on |
| --- | --- |
| `##os.Darwin` | macOS |
| `##os.Linux` | Linux |
| `##distro.Arch` | Arch Linux |

## Adding files

```sh
# All machines
yadm add ~/.config/somefile

# Arch-only
mv ~/.config/somefile "~/.config/somefile##distro.Arch"
yadm add "~/.config/somefile##distro.Arch"
```

Run `yadm alt` after pulling to regenerate symlinks.

## Fish keymaps

Fuzzy finding via `tv` (television):

| Shortcut | Action |
| --- | --- |
| `ctrl+T` | smart autocomplete |
| `ctrl+R` | search history |
| `tv git-log` | search git log |
