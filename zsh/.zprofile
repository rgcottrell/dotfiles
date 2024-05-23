for BREW in \
    "/opt/homebrew/bin/brew" \
    "/home/linuxbrew/.linuxbrew/bin/brew" \
    "/usr/local/bin/brew"; \
do
    if [ -f "$BREW" ]; then
        eval "$($BREW shellenv)"
        break
    fi
done

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

if [ -f "$HOME/.zprofile.local" ]; then
    . "$HOME/.zprofile.local"
fi
