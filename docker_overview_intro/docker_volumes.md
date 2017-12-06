# Les volumes Docker


--------


## Principes

Les volumes sont :
- volatiles ?
- non persistants?
- lent ?


--------


## Les types de volume

il existe 3 types :
- les volumes classique
- les volumes d'hôte
- les volumes container
- les volumes driver


--------


## Pourquoi

- Volume classique
  - test
- Volume d'hôte
  - test ou développement
- Volume container (avec ou sans plugin)
  - partage entre différents containers
  - production


--------


## Comment

- Volume d'hôte :

~~~bash
docker container run -v /home/toto:/usr/share/nginx/html nginx
~~~

- Volume container :

~~~bash
docker volume create test1
docker container run -v test1:/usr/share/nginx/html nginx
~~~
