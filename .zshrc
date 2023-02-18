
[[ -n $SSH_CONNECTION ]] && ZSH_THEME="agnoster-hostname" || ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
HYPHEN_INSENSITIVE="true"
ZSH_TMUX_AUTOCONNECT="false"
ZSH_TMUX_AUTOQUIT="true"
ZSH_TMUX_AUTOSTART="false"

export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
# ZSH_THEME="arrow"
plugins=(git
        colored-man-pages
        command-not-found
        zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh
source $HOME/.zshrc_local
source $HOME/.functions.zsh


eval $(thefuck --alias)
