# dotfiles

Managed with [yadm](https://yadm.io) across three machines:

- **Mac** — work laptop (macOS, Homebrew)
- **Omarchy desktop** — home desktop (Arch Linux)
- **Omarchy laptop** — home laptop (Arch Linux)

## Tools

- [Ghostty](https://ghostty.org) — terminal
- [Fish](https://fishshell.com) + [Fisher](https://github.com/jorgebucaran/fisher) — shell
- [Neovim](https://neovim.io) (LazyVim) — editor
- [tmux](https://github.com/tmux/tmux) — multiplexer
- [mise](https://mise.jdx.dev) — language version manager

## Setup

> Back up any existing Neovim config first:
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

**Omarchy**
```sh
sudo pacman -S yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm config local.class desktop  # or: laptop
yadm bootstrap
```

## How alternates work

Files suffixed with `##condition` are only symlinked on matching machines. Most conditions are auto-detected — only monitor layout needs a manual class:

| Suffix | Applies on |
|---|---|
| `##os.Darwin` | macOS |
| `##os.Linux` | Linux |
| `##distro.Arch` | Arch Linux |
| `##distro.Arch,t` | Arch Linux (template — varies by class) |

The `monitors.conf##distro.Arch,t` template outputs different monitor lines depending on `local.class` (`desktop` or `laptop`).

## Adding files

```sh
# All machines
yadm add ~/.config/somefile

# Arch-only
mv ~/.config/somefile "~/.config/somefile##distro.Arch"
yadm add "~/.config/somefile##distro.Arch"

# Machine-specific
mv ~/.config/somefile "~/.config/somefile##distro.Arch,class.desktop"
yadm add "~/.config/somefile##distro.Arch,class.desktop"
```

Run `yadm alt` after pulling to regenerate symlinks.

## Fish keymaps

| Shortcut | Action |
|---|---|
| `ctrl+alt+f` | search directory |
| `ctrl+alt+L` | search git log |
| `ctrl+R` | search history |
