# Les réseaux Docker


--------


## Découverte des réseaux (1/2)

Lancement container sur le bridge0

~~~bash
docker container run -d --name host1 sphinxgaia/training-alpine:ynov
docker container run --name host2 sphinxgaia/training-alpine:ynov
~~~

Accès au second container :

~~~bash
ping host1
~~~

- Sortir du container sans l'arrêter


--------


## Découverte des réseaux (2/2)

Quelle est l'ip de l'host1 (trouver la ligne : NetworkSettings ):

~~~bash
docker container inspect host1
~~~

Relancer le ping depuis l'host2

~~~bash
docker container attach host2
ping ip.ho.st.1
~~~


--------


## Avec un réseau Docker

Création d'un réseau :

~~~bash
docker network create test1
docker container run -d --net test1 --name host3 sphinxgaia/training-alpine:ynov
docker container run --net test1 --name host4 sphinxgaia/training-alpine:ynov
~~~

Joindre l'host 3 :

~~~bash
ping host3
ping host1
~~~

Joindre le bridge0 :

~~~bash
docker network connect bridge host4
docker container attach host4
ping ip.ho.st.1
~~~


--------


## Nettoyage

~~~bash
docker container rm -f $(docker container ls -aq)
docker system prune
docker image prune
docker volume prune
docker network prune
~~~
