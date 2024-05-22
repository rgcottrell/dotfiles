if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --zsh)"
    if [[ -n "$TMUX" ]]; then
        alias fzf="fzf-tmux"
    fi
fi

if command -v gh >/dev/null 2>&1; then
    eval "$(gh copilot alias -- zsh)"
fi

if command -v lsd >/dev/null 2>&1; then
    alias ls="lsd"
    alias la="ls -a"
    alias ll="ls -l"
    alias lla="ls -la"
fi

if command -v nvim >/dev/null 2>&1; then
    export EDITOR="nvim"
    export VISUAL="nvim"
    alias vi="nvim"
    alias vim="nvim"
fi

if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
    alias cd="z"
fi

if [ -f "$HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh" ]; then
    source "$HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
    zstyle ':autocomplete:*' min-input 3
    zstyle ':autocomplete:*' delay 0.5
fi

if [ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

if [ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# >>> Google Cloud SDK >>>
if [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc" ]; then
    source "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc"
fi
if [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc" ]; then
    source "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc"
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

if command -v conda >/dev/null 2>&1; then
    # Disable conda's default behavior of changing the PS1 in the shell so that
    # it can be managed by starship.
    conda config --set changeps1 False

    # If running in TMUX, deactivate all conda environments and then reactivate
    # the base environmant to avoid issues with conda's shell hooks.
    if [[ -n "$TMUX" ]]; then
        for i in $(seq ${CONDA_SHLVL}); do
            conda deactivate
        done
        conda activate base
    fi
fi
