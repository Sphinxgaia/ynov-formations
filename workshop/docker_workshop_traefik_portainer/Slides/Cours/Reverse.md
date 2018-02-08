# Reverse Proxy


--------


# Traefik

###### ![traefik](./Slides/Img/traefik.png)


--------


# HA Proxy

###### ![ha](./Slides/Img/ha.png)


--------


# Exercices

- Lancement de traefik
- Configuration
- Test :
  - Lancement d'un container
  - https


--------


# Lancement de traefik

- Récupérer le fichier traefik.toml
- Mettez le dans un répertoire particulier
- Puis lancer traefik :
~~~bash
docker run -d -p 8080:8080 -p 80:80 -v $PWD/traefik.toml:/etc/traefik/traefik.toml traefik
~~~


--------

# Test


~~~dockerfile
version: '2'

services:
  proxy:
    image: traefik
    command: --api --docker --docker.domain=docker.localhost --logLevel=DEBUG
    networks:
      - webgateway
    ports:
      - "80:80"
      - "8080:8080"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - $PWD/traefik.toml:/traefik.toml

networks:
  webgateway:
    driver: bridge
~~~

- Lancer le container
~~~bash
docker-compose ud -d
~~~

--------


# Test d'un contenu

~~~dockerfile
version: '2'

services:
  whoami:
    image: emilevauge/whoami
    networks:
      - web
    labels:
      - "traefik.backend=whoami"
      - "traefik.frontend.rule=Host:whoami.docker.localhost"
    deploy:
      mode: replicated
      replicas: 1

networks:
  web:
    external:
      name: traefik_webgateway
~~~

~~~bash
docker-compose up -d
~~~


--------


# Who am I ?


~~~bash
watch curl -H Host:whoami.docker.localhost http://127.0.0.1
~~~

~~~bash
docker-compose scale whoami=2
~~~


--------


# Intérêt de HA Proxy

- Démarrage d'un cluster MYSQL
~~~bash
docker run --name db1 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=djangodb -e SERVER_ID=1 -e BIND_ADDRESS=0.0.0.0 -p 3308:3306 -d nicomak/rep_mysql:5.7
docker run --name db2 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=djangodb -e SERVER_ID=1 -e BIND_ADDRESS=0.0.0.0 -p 3309:3306 -d nicomak/rep_mysql:5.7
docker run --name db3 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=djangodb -e SERVER_ID=1 -e BIND_ADDRESS=0.0.0.0 -p 3310:3306 -d nicomak/rep_mysql:5.7
docker run --name db4 -e AUTO_INIT_MASTER_IP=127.0.0.1 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=djangodb -e SERVER_ID=4 -e BIND_ADDRESS=0.0.0.0 -p 33011:3306 -d nicomak/rep_mysql:5.7
~~~


--------


# Intérêt de HA Proxy

~~~bash
docker run -d --name haproxy_mysql -v $PWD/ha.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro -p 8080:8080 -p 3306:3306 -p 3307:3307 haproxy:1.6
~~~

- Aller sur : https://localhost:8080
  - user : admin
  - pass : password
