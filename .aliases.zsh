alias catalias='cat ~/.aliases.zsh'
alias cc='clear'
alias coex='code . && exit'
alias copywd='pwd | tr "\n" "\b" | xclip -selection clipboard'
alias dataset='python3 ~/pyutils/dataset'
alias df='df -h -xsquashfs -xtmpfs -xdevtmpfs'
alias dk='cd ~/Desktop'
alias dn='cd ~/Downloads'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias docu='cd ~/Documents'
#alias esc_caps='sh ~/scripts/esc_to_capslock.sh'
alias enable_caps='xmodmap -e "keycode 9 = Caps_Lock"'
alias gcl='git clone'
alias gcd='git clone --depth 1'
alias gco='git checkout'
alias gdown='gsutil -m cp'
alias git_pull_all='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias git_status_all='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} status \;'
alias ll='ls -hltrBF --group-directories-first --color=auto'
alias merge_compile_commands='sh ~/scripts/merge_compile_commands'
alias mp='mkdir -p'
alias num_pts_pcd='/home/s/pyutils/number_of_points_pcd.py'
alias nv='nvim'
alias nvalias='nvim ~/.aliases.zsh'
alias primary='xrandr --output HDMI-0 --primary --mode 1920x1080'
alias py='ipython3'
alias rg='ranger'
alias rf='rm -rf'
alias see='watch -n 1'
alias ts='tmux new-session -s $(basename $(pwd))'
alias xcopy='xclip -selection clipboard'
alias xopen='xdg-open'
alias ckb='cmake -Bbuild . && cmake --build build -j8'
