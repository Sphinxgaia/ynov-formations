# Docker Logs

- Lancer

~~~bash
docker container run -d -p 8080:80 --name nginx sphinxgaia/training-nginx:ynov
docker logs -f --timestamps nginx
~~~

- Accéder à http://localhost:8080
- Scruter les logs


--------


## Prune

~~~bash
docker container -f prune
docker system -f prune
~~~
