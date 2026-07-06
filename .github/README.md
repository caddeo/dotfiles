# dotfiles

Managed with [yadm](https://yadm.io) across three machines:

- **Mac** — work laptop (macOS, Homebrew)
- **Omarchy** — home desktop and laptop (Arch Linux)

## Tools

- [Ghostty](https://ghostty.org) — terminal
- [Fish](https://fishshell.com) + [Fisher](https://github.com/jorgebucaran/fisher) — shell
- [Neovim](https://neovim.io) (LazyVim) — editor
- [tmux](https://github.com/tmux/tmux) — multiplexer
- [mise](https://mise.jdx.dev) — language version manager

## Alternates

Files with a `##<condition>` suffix are alternates — yadm symlinks the right one based on the current machine. Most conditions are detected automatically:

| Suffix | When it applies |
|---|---|
| `##os.Darwin` | macOS (auto-detected) |
| `##distro.Arch` | Arch Linux (auto-detected) |
| `##distro.Arch,class.desktop` | Arch desktop (class set manually) |
| `##distro.Arch,class.laptop` | Arch laptop (class set manually) |

For machine-specific files like monitor layouts, set the class once:

```sh
yadm config local.class desktop   # Arch desktop
yadm config local.class laptop    # Arch laptop
```

Mac and general Arch configs need no class — they match on OS/distro alone. Run `yadm alt` after pulling to regenerate symlinks.

## Setup on a new machine

> If you have an existing Neovim config, back it up first:
>
> ```sh
> mv ~/.config/nvim{,.bak}
> mv ~/.local/share/nvim{,.bak}
> ```

### Mac

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm bootstrap
```

### Omarchy

```sh
sudo pacman -S yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm config local.class desktop  # or: laptop
yadm bootstrap
```

## Adding files

**Shared across all machines:**

```sh
yadm add ~/.config/somefile
yadm commit -m "add somefile"
yadm push
```

**Arch-only (e.g. Hyprland, Waybar):**

```sh
mv ~/.config/somefile "~/.config/somefile##distro.Arch"
yadm add "~/.config/somefile##distro.Arch"
```

**Machine-specific (e.g. monitor layout):**

```sh
mv ~/.config/somefile "~/.config/somefile##distro.Arch,class.desktop"
yadm add "~/.config/somefile##distro.Arch,class.desktop"
```

## Fish keymaps

| Shortcut | Action |
|---|---|
| `ctrl+alt+f` | search directory |
| `ctrl+alt+L` | search git log |
| `ctrl+R` | search history |
