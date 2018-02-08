# Les images Docker


--------


## Principes

- Récupération d'une image

~~~bash
docker pull alpine:3.5
docker pull alpine
docker pull sphinxgaia/training-alpine
~~~

- Lister les images présentes en cache

~~~bash
docker image ls
~~~


--------


## Layers


- Lancer l'image alpine

~~~bash
docker container run --name first sphinxgaia/alpine
touch test.txt
ls -al
~~~

- Sortir proprement du container
- Ouvrir de nouveau (sortir avec Ctr + C)

~~~bash
docker container attach <alpineContainerID>
ls -al
~~~


--------


## RETROUVER vos données

- Lancer l'image alpine

~~~bash
docker container run sphinxgaia/alpine
ls -al
~~~

- Où est notre fichier ?
- Relancer votre premier container

~~~bash
docker container start first
docker container attach first
ls -al
~~~


--------


## Nettoyage

~~~bash
docker container stop $(docker container ls -aq)
docker system prune
~~~
