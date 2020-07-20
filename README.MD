# Bienvenue sur mon projet Vagrant !
Il s'agit d'un projet réalisé en Juillet 2020 dans le cadre de ma formation "Expert DevOps" chez OpenClassRooms.

## Ca fait quoi ?
Ca crée une VM Virtual Box sur une base ubuntu, avec 2 ports mappés, et avec des outils installés : éditeur VIM, Docker Engine, et Ansible.

## Ca ressemble à quoi ?
![Aperçu de l'architecture](https://github.com/alinuxien/Vagrant/raw/master/Aperc%CC%A7u%20Projet%20Vagrant.png)

## Contenu ?
Un Vangrantfile et un script bootstrap.sh

## J'ai besoin de quoi ?
De [Virtual Box](https://www.virtualbox.org/) et de [Vagrant](https://www.vagrantup.com/downloads) installés sur la machine. 

## Comment ça s'utilise ?
La préparation et le lancement de la VM se fait en 1 seule commande, dans le dossier qui contient le Dockerfile.
### Build & Run
vagrant up

## Ca a marché ?
### On peut se connecter en ssh sur la VM
vagrant ssh
### Ensuite, on peut vérifier que les outils sont biens installés
#### VIM
vim --version 
#### Ansible
ansible --version 
#### Docker
docker --version 

# Et après ?
[Pourquoi pas y créer un container avec nginx ?](https://github.com/alinuxien/Docker.git)

