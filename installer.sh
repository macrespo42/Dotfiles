# add spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# add git
sudo apt-get -y install git

# add vim
sudo apt-get -y install vim

# add terminator
sudo apt­-get install -y terminator

# add oh my zsh
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# cp conf files
sudo cp -r .vscode ~/.vscode
sudo cp -r .zshrc ~/.zshrc && source ~/.zshrc
