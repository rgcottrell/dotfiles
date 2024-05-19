export EDITOR="nvim"

alias cd="z"

alias ls="lsd"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

eval "$(fzf --zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# >>> GitHub CLI >>>
if command -v gh &> /dev/null; then
    eval "$(gh copilot alias -- zsh)"
fi
# <<< GitHub CLI <<<

# >>> Google Cloud SDK >>>
if [ -f "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc" ]; then
    source $(brew --prefix)/share/google-cloud-sdk/path.zsh.inc
fi
if [ -f "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc" ]; then
    source $(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc
fi
# <<< Google Cloud SDK <<<

# >>> Modular SDK >>>
if [ -d "$HOME/.modular" ]; then
    export MODULAR_HOME="$HOME/.modular"
    export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
fi
# <<< Modular SDK <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Disable conda's default behavior of changing the PS1 in the shell so that it can be
# managed by starship.
conda config --set changeps1 False

# Make zsh-autocomplete suggestion less intrusive.
zstyle ':autocomplete:*' min-input 3
zstyle ':autocomplete:*' delay 0.5
