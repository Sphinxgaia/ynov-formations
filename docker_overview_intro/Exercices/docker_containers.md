# Docker container

- Lancer
~~~bash
docker container run -d --name infinite sphinxgaia/training-ping:infinite
docker container ls
~~~

- Lancer ( faire un Ctrl + C après la première commande puis un Crtl + P + Q)

~~~bash
docker container exec -it infinite sh
docker container logs infinite
docker container ls
~~~


--------


## Stopper le container


- Arrêt du processus (utiliser CRTL + P + Q après la deuxième commmande)

~~~bash
docker container exec -it infinite sh
kill -9 $(pidof ping)
docker container ls
docker logs infinite
~~~

- Arrêt du processus (utiliser CRTL + C après la deuxième commmande)

~~~bash
docker container attach infinite
docker container ls
~~~


--------


## Nettoyage

~~~bash
docker system prune
~~~
