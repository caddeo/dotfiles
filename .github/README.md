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

## Profiles

Each machine has a `local.class` that controls which packages get installed and which dotfile alternates yadm uses.

| Machine | Class |
|---|---|
| Mac work laptop | `mac` |
| Omarchy desktop | `omarchy,omarchy-desktop` |
| Omarchy laptop | `omarchy,omarchy-laptop` |

Set the class once on each machine:

```sh
yadm config local.class mac                      # Mac
yadm config local.class omarchy,omarchy-desktop  # Omarchy desktop
yadm config local.class omarchy,omarchy-laptop   # Omarchy laptop
```

Files named with a `##class.X` suffix are alternates — yadm symlinks the right one based on the class. Using comma-separated classes means `##class.omarchy` matches both omarchy machines, while `##class.omarchy-desktop` only matches the desktop. Run `yadm alt` after pulling to regenerate symlinks.

## Setup on a new machine

> If you have an existing Neovim config, back it up first:
> ```sh
> mv ~/.config/nvim{,.bak}
> mv ~/.local/share/nvim{,.bak}
> ```

### Mac

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm config local.class mac
yadm bootstrap
```

### Omarchy

```sh
sudo pacman -S yadm
yadm clone git@github.com:caddeo/dotfiles.git
yadm config local.class omarchy,omarchy-desktop  # or omarchy-laptop
yadm bootstrap
```

## Adding files

**Shared across all machines:**

```sh
yadm add ~/.config/somefile
yadm commit -m "add somefile"
yadm push
```

**Machine-specific:**

Rename the file with a `##class.<name>` suffix before adding:

```sh
mv ~/.config/somefile ~/.config/somefile##class.mac
yadm add ~/.config/somefile##class.mac
yadm commit -m "add mac-only somefile"
yadm push
```

yadm symlinks it to `~/.config/somefile` on matching machines only. Run `yadm alt` after pulling on other machines.

## Fish keymaps

| Shortcut | Action |
|---|---|
| `ctrl+alt+f` | search directory |
| `ctrl+alt+L` | search git log |
| `ctrl+R` | search history |
