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

Then use GNU `stow` to symlink the files to your home directory. Each project
has its own directory in the repo, and `stow` can be used to symlink the files
on a per-project basis.

```bash
cd ~/.dotfiles
stow alacritty
stow bat
stow nvim
stow starship
stow tmux
stow wezterm
stow zed
stow zsh
```

## Requirements

### CLI tools

This repository assumes that you have various tools installed on your system.
The following is a list of tools that are assumed to be installed:

- [bat](https://github.com/sharkdp/bat)
- [fd](https://github.com/sharkdp/fd)
- [fzf](https://github.com/junegunn/fzf)
- [gh](https://github.com/cli/cli)
- [glow](https://github.com/charmbracelet/glow)
- [jq](https://jqlang.github.io/jq/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lsd](https://github.com/lsd-rs/lsd)
- [neovim](https://neovim.io/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [starship](https://starship.rs/)
- [stow](https://www.gnu.org/software/stow)
- [tldr](https://tldr.sh/)
- [tmux](https://github.com/tmux/tmux)
- [zellij](https://zellij.dev/)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://eithub.com/zsh-users/zsh-syntax-highlighting)

These can be installed using `brew`:

```bash
brew install bat
brew install fd
brew install fzf
brew install gh
brew install glow
brew install jq
brew install lazygit
brew install lsd
brew install neovim
brew install ripgrep
brew install starship
brew install stow
brew install tlrc
brew install tmux
brew install zellij
brew install zoxide
brew install zsh-autocomplete
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
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

Terminals are not available from `brew` on Linux or WSL. To install an alternate
terminal, go to the terminal's project page and follow the installation
instructions.

### Nerd Fonts

To make the best use of these tools, a [Nerd Font](https://www.nerdfonts.com/)
should be installed as the as the default font for the terminal. This will
allow special symbols to be displayed on the screen. There are several fonts
available, but I like the `Hack Nerd Font`.

Nerd Fonts can be installed using `brew` on macOS.

```bash
brew install --cask font-hack-nerd-font
```

Nerd Fonts are not available from ´brew´ on Linux or WSL. To install a Nerd Font
on Windows, go to the [Nerd Font Downloads](https://www.nerdfonts.com/font-downloads)
page and download your preferred font. Open the font files to install. Finally, set
the font as the default font from the terminal settings.

### Tmux Setup

To initialize the tmux plugin manager, clone the manager into the tmux plugins
directory:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Rust Setup

To install Rust, run the following command:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Anaconda Setup

Anaconda is available from `brew` on macOS, but it is recommended to install
Anaconda from the [Anaconda website](https://www.anaconda.com/products/distribution).

On macOS, install using:

```bash
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-MacOSX-arm64.sh
bash Anaconda3-2024.02-1-MacOSX-arm64.sh
```

On Linux or WSL, install using:

```bash
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
bash Anaconda3-2024.02-1-Linux-x86_64.sh
```

Accept the default location in the home directory, but do not modify the shell
scripts. The included `.zshrc` file will initialize Anaconda in the shell.

### GitHub Copilot CLI Setup

Copilot can be installed from the GitHub CLI:

```bash
gh auth login
gh extension install github/gh-copilot

```
