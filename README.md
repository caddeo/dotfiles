# Programming setup

I use this setup both for work and home

My home setup is at [some-other-branch-wip](..link/to/branch)

It's configured both for MAC OS and Fedora

## Features

- Ghostty Terminal
- Fish
- Nvim using Lazyvim

### Languages & Technologies

*These are the main languages and technologies I use.*

- Kubernetes
- Terraform
- AWS
- Grafana
- NodeJS
- Redis
- PostgreSQL
- Rust
- C
- Javascript
- Go

## Requirements

- **OSX**: [Homebrew](https://brew.sh/)
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

## Setup

### Font Installation

Download these four ttf files:

- [MesloLGS NF Regular.ttf](https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true)
- [MesloLGS NF Bold.ttf](https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true)
- [MesloLGS NF Italic.ttf](https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true)
- [MesloLGS NF Bold Italic.ttf](https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true)

### Ghostty

OSX

```shell
brew install --cask ghostty
```

Fedora

```shell
dnf copr enable scottames/ghostty
dnf install ghostty
```

### Fish

Fedora

```shell
dnf install fish
```

OSX

```shell
brew install fish
```

### NVIM

OSX

```shell
brew install neovim
```

Fedora

```shell
sudo dnf install -y neovim python3-neovi
```

### YADM

OSX

```shell
brew install yadm
```

Fedora 42>

```shell
dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:TheLocehiliosan:yadm/Fedora_42/home:TheLocehiliosan:yadm.repo
dnf install yadm
```

## Getting started

Install scripts for

- rust
- git
- curl
- ripgrep
- fd
- Fisher
- Tide
- fzf
- z
- eza

and for [languages and technologies](#languages-technologies)

```shell
yadm clone git@github.com:caddeo/dotfiles.git
yadm status
```

## Adding changes

```
yadm add {path-to-add} 
yadm commit
yadm push -u origin master:main  
```

## Keymaps

Some cool Keymaps I forget often

### Fish keymaps

#### fzf keymaps

- `ctrl+alt+f` - search directory
- `ctrl+alt+L`- search git log
- `ctrl+R`- search history

### Nvim

## TODO

### Set up aliases

Fish has something similar to aliases. I need all my git commands etc set up
