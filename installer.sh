#!/bin/bash

# Install my software and config zsh / vscode

install_spotify(){
    if [ ! -e "${bin_path}/spotify" ]; then
        curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
        echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
        sudo apt-get update && sudo apt-get install spotify-client
        echo "spotify is installed now ✓"
    else
        echo "spotify is already installed"
    fi
}

install_git(){
    if [ ! -e "${bin_path}/git" ]; then
        sudo apt-get -y install git
        echo "git is installed now ✓"
    else
        echo "git already installed"
    fi
}

install_vim(){
    if [ ! -e "${bin_path}/vim" ]; then
        sudo apt-get -y install vim
        echo "vim is installed now ✓"
    else
        echo "vim is already installed"
    fi
}

install_terminator(){
    if [ ! -e "${bin_path}/vim" ]; then
        sudo apt­-get install -y terminator
        echo "terminator is installed now ✓"
    else
        echo "terminator is already installed"
    fi
}

install_oh_my_zsh(){
    sudo apt-get -y install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

set_dotfiles(){
    sudo cp -r .vscode ~/.vscode
    sudo cp -r .zshrc ~/.zshrc && source ~/.zshrc
}

main(){
    bin_path="/usr/bin"
    install_spotify
    install_git
    install_vim
    install_terminator
    install_oh_my_zsh
    set_dotfiles
}

main

