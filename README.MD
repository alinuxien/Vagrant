# Vagrant

Ce dépot permet la construction par Vagrant d'une VM Virtual Box, basée Ubuntu 18-04, avec des outils installés dessus ( dans leur versions les plus récentes ) :
VIM
Docker
Ansible

De plus, une redirection de port est configuré par Vagrant :
le port 32768 de la VM sur le port 32768 de l'hôte
le port 8080 de la VM sur le port 8080 de l'hôte
Vous pouvez personnaliser ces redirections en éditant simplement le fichier Vagrantfile.

En pré-requis, il faut bien sûr que Vagrant soit installé soit la machine, ce que vous pouvez vérifier avec la commande : 
vagrant --version

Dans votre dossier de travail, vous pouvez récupérer tous les fichiers de ce dépôt, avec la commande : 
git pull https://github.com/alinuxien/Vagrant.git

Puis on lance la construction de la VM, avec l'installation des applications citées ci-dessus, par la commande :
vagrant up

Lorsque la construction est terminée ( quelques bonnes minutes!!! ), la VM est enfin lancée.
On peut le vérifier en se connectant dessus en ssh, avec la commande : 
vagrant ssh

Une fois connecté en ssh, on vérifie que les applications ont bien été installées, avec les commandes :
vim --version
ansible --version
docker --version

On se déconnecte de la VM avec la commande :
logout

Et voilà, that's all folks.

