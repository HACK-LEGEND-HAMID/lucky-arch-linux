eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls='ls --color=auto'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ $- == *i* ]]; then
    RANDOM_IMAGE=$(find ~/.config/fastfetch/images -type f \( \
        -iname "*.png" -o \
        -iname "*.jpg" -o \
        -iname "*.jpeg" \
    \) | shuf -n 1)

    fastfetch --logo-type kitty --logo "$RANDOM_IMAGE"
fi
