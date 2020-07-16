#!/usr/bin/env bash

echo "*************************************"
echo "* [1]: AJOUT DES DEPOTS NECESSAIRES *"
echo "*************************************"
apt-add-repository --yes --update ppa:ansible/ansible
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-add-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "********************************************************"
echo "* [2]: MISE A JOUR DE LA LISTE DES PAQUETS DISPONIBLES *"
echo "********************************************************"
apt-get update

echo "****************************"
echo "* [3]: INSTALLATION DE VIM *"
echo "****************************"
apt-get install -y vim

echo "********************************"
echo "* [4]: INSTALLATION DE ANSIBLE *"
echo "********************************"
apt-get install -y software-properties-common ansible

echo "*******************************"
echo "* [5]: INSTALLATION DE DOCKER *"
echo "*******************************"
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent docker-ce docker-ce-cli containerd.io
usermod -aG docker vagrant

