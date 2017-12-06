# Docker container

- Lancer

~~~bash
docker container run -d sphinxgaia/training-hello-world:ynov
docker container ls
~~~


- Lancer

~~~bash
docker container run -d --name infinite sphinxgaia/training-ping:infinite
docker container ls
docker container stop infinite
~~~


--------


## Autres commandes


- Créer un volume

~~~bash
docker volume create test
docker volume ls
~~~

- Créer un réseau

~~~bash
docker network create test
docker network ls
~~~

- Les images

~~~bash
docker image ls
~~~


--------


## Prune

![danger](docker_overview_intro/img/danger.png)

~~~bash
doocker system df
docker container prune
docker container ls

doocker system df
docker system prune
docker image ls
docker volume ls
docker network ls
~~~
