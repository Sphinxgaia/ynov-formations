## Installation (1/3)

- Mise à jour des paquets

~~~bash
sudo yum update
~~~

- Préparation des pré-requis Docker

~~~bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
~~~

- Ajout de la clé officiellele

~~~bash
sudo rpm --import https://download.docker.com/linux/centos/gpg
~~~


--------


## Installation (2/3)

- Préparation de vos repo

~~~bash
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update
~~~

- Installation de docker

~~~bash
sudo yum install docker-ce
sudo systemctl enable docker && sudo systemctl start docker
~~~


--------


## Installation (3/3)

[Docker for CentOS](https://docs.docker.com/engine/installation/linux/centos/)

[Docker for Ubuntu](https://docs.docker.com/engine/installation/linux/ubuntu/)

[Docker install](https://docs.docker.com/engine/installation/)

[My Script](https://github.com/Sphinxgaia/ynov-formations/tree/master/Scripts/docker_install.sh)
