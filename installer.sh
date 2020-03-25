#!/bin/bash

# add spotify
if [ ! -e "/usr/bin/spotify" ]; then
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update && sudo apt-get install spotify-client
    echo "spotify is installed now ✓"
else
    echo "spotify is already installed"
fi

# add git

if [ ! -e "/usr/bin/git" ]; then
    sudo apt-get -y install git
    echo "git is installed now ✓"
else
    echo "git already installed"
fi

# add vim

if [ ! -e "/usr/bin/vim" ]; then
    sudo apt-get -y install vim
    echo "vim is installed now ✓"
else
    echo "vim is already installed"
fi

# add terminator
if [ ! -e "/usr/bin/vim" ]; then
    sudo apt­-get install -y terminator
    echo "terminator is installed now ✓"
else
    echo "terminator is already installed"
fi

# add oh my zsh
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# cp conf files
sudo cp -r .vscode ~/.vscode
sudo cp -r .zshrc ~/.zshrc && source ~/.zshrc
