#!/bin/bash

# install docker, docker compose and minikube

install_docker(){
    if [ ! -e "usr/bin/docker"]; then
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
        sudo apt update
        sudo apt install docker-ce docker-compose
        sudo usermod -aG docker $USER
        echo "docker is now installed, please reboot you're system"
    else
        echo "docker already installed"
    fi
}


install_minikube(){
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmox +x minikube
    sudo mkdir -p /usr/local/bin/
    sudo mv minikube /usr/local/bin/minikube
    echo "minikube latest version, successfully installed"
}

main(){
    sudo apt update
    install_docker
    install_minikube
}

main