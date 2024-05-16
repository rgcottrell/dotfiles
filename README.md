# My Environment Files

This repository contains my environment files for various tools and
applications. It is meant to be used as a backup and a way to keep
track of changes to my environment files.

## Installation

First, check out the dotfiles repo in you home directory:

```bash
cd ~
git clone git@github.com:rgcottrell/dotfiles.git .dotfiles
```

Then use GNU ´stow´ to symlink the files to your home directory:

```bash
cd ~/.dotfiles
stow .
```

## Requirements

This repository assumes that you have various tools installed on your system.
The following is a list of tools that are assumed to be installed:

- [alacritty](https://alacritty.org/)
- [bat](https://github.com/sharkdp/bat)
- [fd](https://github.com/sharkdp/fd)
- [fzf](https://github.com/junegunn/fzf)
- [lsd](https://github.com/lsd-rs/lsd)
- [neovim](https://neovim.io/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [starship](https://starship.rs/)
- [stow](https://www.gnu.org/software/stow)
- [tmux](https://github.com/tmux/tmux)
- [zellij](https://zellij.dev/)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

These can be install using `brew` on macOS:

```bash
brew install alacritty
brew install bat
brew install fd
brew install fzf
brew install lsd
brew install neovim
brew install ripgrep
brew install starship
brew install stow
brew install tmux
brew install zellij
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zoxide
```
