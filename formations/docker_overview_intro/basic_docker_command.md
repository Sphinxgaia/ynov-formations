# Les commandes de base de Docker


--------


## Les principales commandes

~~~bash
docker container
docker volume
docker image
docker network
docker system
....
~~~

[Liste complète des commandes Docker](https://docs.docker.com/engine/reference/commandline/docker/#description)


--------


## Docker container


~~~bash
docker container run [options] [image] [command] [args]
docker container stop [nomimage|id]
~~~


--------


## Docker image


~~~bash
docker image pull repo/image:tag
docker image push repo/image:tag
docker image ls
~~~


--------


## Docker volume


~~~bash
docker volume create nomvolume
docker volume ls
~~~


--------


## Docker network


~~~bash
docker network create nomreseau
docker network ls
~~~


--------


## Inspect

~~~bash
docker container inspect
docker volume inspect
~~~


--------


## Prune

![danger](docker_overview_intro/img//danger.png)

~~~bash
docker container prune
docker system prune
~~~
