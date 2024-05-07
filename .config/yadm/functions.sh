#!/bin/bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

install_ohmyzsh() {
  export CHSH=no
  export KEEP_ZSHRC=yes
  export RUNZSH=no
  export OHMYZSH_URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master
  export ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

  # Instal oh-my-zsh always, update if already istalled
  ZSH= sh -c "$(curl -fsSL $OHMYZSH_URL/tools/install.sh)" >/dev/null || zsh -i -c "omz update"

  # If user shell is not zsh, change it (password required)
  if [ ! "$(basename "$SHELL")" = "zsh" ]; then
    RUN=$(command_exists sudo && echo "sudo" || echo "command")
    $RUN chsh -s "$(which zsh)" "$USER" 2>/dev/null || chsh -s "$(which zsh)"
  fi

  # Install zsh-autosuggestions custom plugin
  git clone --depth 1 \
    https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM}/plugins/zsh-autosuggestions 2>/dev/null || true
}


install_neovim_extensions() {
  #wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install neovim
  # sudo snap install nvim --classic
  # Install vim-plug packages
  nvim --noplugin --headless +PlugInstall +qall

  # Manually install coc-extensions(https://github.com/neoclide/coc.nvim/issues/118)
  COC_EXTENSIONS=$(nvim --headless -c 'echo coc_global_extensions' +qa 2>&1 | awk -v RS="'" '!(NR%2)')
  COC_EXT_DIR="$HOME/.config/coc/extensions"
  mkdir -p $COC_EXT_DIR && cd $COC_EXT_DIR && [ ! -f package.json ] && echo '{"dependencies":{}}' >package.json
  npm install $(echo $COC_EXTENSIONS) --install-strategy=shallow --ignore-scripts --no-bin-links --no-package-lock --only=prod
}

install_pip_packages() {
  # PEP 668 forces us to install all python packages in a self-managed env
  # rm -rf $HOME/.venv
  # python3.10 -m venv --system-site-packages $HOME/.venv
  # source $HOME/.venv/bin/activate
  python3 -m pip install --upgrade -r $HOME/.config/yadm/pip_packages
}

install_apt_packages() {
  #TODO change
  #add clang tools to apt
  xargs sudo apt-get -y install <$HOME/.config/yadm/apt_packages
  # replace_pkg_version python 3.11 3.10
  # replace_pkg_version ruby 3.2 3.0
}

install_fonts() {
  if [[ -z $(fc-list | grep SFMono) ]]; then
    echo "SFMono patched fonts not installed, this might take a bit"
    sh ~/.config/fonts/install_fonts.sh
  else
    echo "SFMono patched already installed, skipping"
  fi
}
