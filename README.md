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

