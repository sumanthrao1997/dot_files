#/bin/bash
# install DroidSansMono Nerd  Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
mkdir -p ~/.local/share/fonts
unzip DroidSansMono.zip -d ~/.local/share/fonts
rm ~/.local/share/fonts/**Windows**
echo "Removing Windows fonts"
fc-cache -fv
echo "done!"
