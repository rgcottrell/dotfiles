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
    . "$HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
    zstyle ':autocomplete:*' min-input 3
    zstyle ':autocomplete:*' delay 0.5
fi

if [ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    . "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

if [ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    . "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

if [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc" ]; then
    . "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc"
fi
if [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc" ]; then
    . "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc"
fi

if [ -d "$HOME/.modular" ]; then
    export MODULAR_HOME="$HOME/.modular"
    export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
fi

if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/anaconda3/etc/profile.d/conda.sh"

    # If running in TMUX, deactivate all conda environments and then reactivate
    # the base environmant to avoid issues with conda's shell hooks.
    if [[ -n "$TMUX" ]]; then
        for i in $(seq ${CONDA_SHLVL}); do
            conda deactivate
        done
    fi
    conda activate base
fi

if [ -f "$HOME/.zshrc.local" ]; then
    . "$HOME/.zshrc.local"
fi
