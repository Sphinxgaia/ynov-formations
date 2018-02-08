# Les volumes Docker


--------


## Création

- Volume d'hôte :

~~~bash
docker container run -d --name nginx1 -p 8080:80 sphinxgaia/training-nginx:ynov
sudo cd /var/lib/docker/volumes/
~~~

- Volume d'hôte :

~~~bash
docker container run -d --name nginx1 -p 8081:80 -v /home/toto:/usr/share/nginx/html sphinxgaia/training-nginx:ynov
sudo cd /var/lib/docker/volumes/test1/_data/
~~~

- Volume container :

~~~bash
docker volume create test1
docker container run -d --name nginx2  -p 8082:80 -v /test1:/usr/share/nginx/html sphinxgaia/training-nginx:ynov
sudo cd /var/lib/docker/volumes/test1/_data/
~~~

- Aller sur <https://localhost:8080>
- Aller sur <https://localhost:8081>
- Aller sur <https://localhost:8082>


--------


## Correction

- Volume d'hôte :

~~~bash
cd /home/toto
wget https://github.com/Sphinxgaia/sgdocker-nginx/tree/master/ynov/index.html
~~~

- Aller sur <https://localhost:8081>


--------


## Nettoyage

~~~bash
docker container rm -f $(docker container ls -aq)
docker system prune
docker image prune
docker volume prune
~~~
