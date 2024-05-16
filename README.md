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

Then use GNU `stow` to symlink the files to your home directory:

```bash
cd ~/.dotfiles
stow .
```

## Requirements

### CLI tools

This repository assumes that you have various tools installed on your system.
The following is a list of tools that are assumed to be installed:

- [anaconda](https://www.anaconda.com/download)
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
- [zsh-syntax-highlighting](https://eithub.com/zsh-users/zsh-syntax-highlighting)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

These can be installed using `brew` on macOS:

```bash
brew install --cask anaconda
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

### Terminals

These tools work best with a modern terminal. I like the simplicity of `Alacritty`
but there are several alternatives that also work well.

- [Alacritty](https://alacritty.org/)
- [Kitty](https://sw.kovidgoyal.net/kitty)
- [Warp](https://docs.warp.dev/)
- [Wezterm](https://wezfurlong.org/wezterm)

Terminals can be install using `brew` on macOS.

```bash
brew install --cask alacritty
brew install --cask kitty
brew install --cask warp
brew install --cask wezterm
```

### Nerd Fonts

To make the best use of these tools, a [Nerd Font](https://www.nerdfonts.com/)
should be installed as the as the default font for the terminal. This will
allow special symbols to be displayed on the screen. There are several fonts
available, but I like the `Hack Nerd Font`.

Nerd Fonts can be installed using `brew` on macOS.

```bash
brew install --cask font-hack-nerd-font
```
