# Programming setup
I use this setup both for work and home 

My home setup is at [some-other-branch-wip](..link/to/branch)

It's configured both for MAC OS and Fedora

## Features

- Ghostty Terminal
- Fish
- Nvim using Lazyvim

### Configured for
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

## Setup

### Ghostty 

#### OSX
```shell
brew install --cask ghostty
```

#### Fedora
```shell
dnf copr enable scottames/ghostty
dnf install ghostty
```

### Fish
...replace oh my zsh

### NVIM

#### OSX 
```shell
brew install neovim
```
#### Fedora
```shell
sudo dnf install -y neovim python3-neovi
``` 
### YADM

Install using

#### OSX 
```shell
brew install yadm
```

#### Fedora 42>
```shell
dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:TheLocehiliosan:yadm/Fedora_42/home:TheLocehiliosan:yadm.repo
dnf install yadm
```

## Getting started
`yadm clone git@github.com:caddeo/dotfiles.git` 

`yadm status` 

## Adding changes 
`yadm add {path-to-add}`  

`yadm commit`

`yadm push -u origin master:main`  

