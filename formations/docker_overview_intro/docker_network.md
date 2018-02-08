# Les réseaux Docker


--------


## Principes

Les containers Docker :
- n'ont pas d'IP publique
- sont sur des réseaux privés
- doivent être exposés sur un port de l'hôte


--------


## Les types de réseaux

il existe 4 types :
- bridge : par défault le bridge 0
- overlay : bridge swarm
- host : réseau d'hôte
- null : sans réseau


--------


## Lancement

Par défaut :
- bridge0 : les containers n'ont pas de résolution de nom

Sinon :
- option --net permet de spécifié un réseau

~~~bash
docker container run --net host sphinxgaia/training-nginx:ynov
~~~
