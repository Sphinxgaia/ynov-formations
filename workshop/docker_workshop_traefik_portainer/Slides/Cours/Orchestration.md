# Orchestration


--------


# C'est quoi

- Gestion du daemon
- Lancement de conteneur
- Gestion complète ?


--------


# Liste :

- Docker EE via UCP
- Kubernetes ~
- Rancher

- Portainer ==> nop


--------


# Installation de portainer




--------


# Lancement docker

~~~bash
docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer
~~~

- Connectez-vous sur http://localhost:9000


--------


# Lancement service :

~~~bash
docker service create \
    --name portainer \
    --publish 9000:9000 \
    --constraint 'node.role == manager' \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --mount type=bind,src=/path/on/host/data,dst=/data \
    portainer/portainer \
    -H unix:///var/run/docker.sock
~~~


--------


# Mode avancé


~~~bash
docker-compose up -d
~~~
