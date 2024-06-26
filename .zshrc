
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
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse'
plugins=(git
        fzf
        z
        colored-man-pages
        command-not-found
        zsh-autosuggestions
        extract)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh
source $HOME/.zshrc_local
source $HOME/.functions.zsh
eval $(thefuck --alias)
export EDITOR='nvim'
export VISUAL='nvim'
