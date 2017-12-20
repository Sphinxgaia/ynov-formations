# Pré-requis


--------


## Technique

Avoir 2 machines virtuelle Linux :
- CentOS, Ubuntu ou Debian
- avec un kernel à jour supportant Docker CE dans 17.09 ou 17.10 selon votre système
- avec Docker CE installé

> Voir :
> <https://docs.docker.com/engine/installation/>


--------


## Dans votre environnement de travail

Télécharger le repository de travail :

~~~bash

git clone https://github.com/Sphinxgaia/ynov-formations.git
cd docker_overview_advanced/

~~~


--------


## Sur vos VMs

Pour mener à bien la suite du cours :
- supprimer le fichier /etc/docker/key.json de vos postes
- rédémarrer le daemon docker

~~~bash
systemctl stop docker
sudo rm -f /etc/docker/key.json
systemctl start docker
~~~
