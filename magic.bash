#!/bin/bash

#Packages I tend to use
sudo apt-get install tree tmux vlc build-essential \
 vim-command-t git libdvdcss2 gnome-tweaks ssh python3-gpg \
 keepass2 python-is-python3 baobab

# Pretty font, used in vim and gnome-terminal settings
mkdir ~/.fonts 2>/dev/null
wget https://github.com/abertsch/Menlo-for-Powerline/archive/master.zip
unzip -j master.zip "*.ttf" -d ~/.fonts
fc-cache -vf ~/.fonts
rm master.zip

# Various dconf settings:
# - Gnome Terminal profile
# - Use Alt for Window Actions (alt-click-drag)
./import-dconf.sh

# Set up tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf

# Install the tmux plugins specified in tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins

# get libdvdcss for reals
sudo dpkg-reconfigure libdvd-pkg

# DO THIS LAST: Set up vimrc, bootstrap Vundle
# (The Vundle bootstrap doesn't seem to quit Vim successfully..)
mkdir ~/.vim 2>/dev/null
cp vimrc ~/.vim/
vim
