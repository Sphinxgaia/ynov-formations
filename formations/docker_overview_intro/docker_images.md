# Les images Docker


--------


## Principes

Les images peuvent :
- provenir de repository
- être crées from scratch avec un Dockerfile

> de base elles sont stockées sur le filesystem dans /var/lib/docker/images/

![repo_images](docker_overview_intro/img//repo_images.png)


--------


## Format

- repository/nomImage:tag
- par défaut lastest et sur le repository Docker Hub



--------


## Layers


- 1 container = plusieurs couche
- 1 couche = 1 Image parente
- Copy on write
- Les layers sont toujours en read-only


![image_layer_single_VE](docker_overview_intro/img//image_layer_single_VE.png)


--------


## Optimisation d'espace

![image_layer_VE](docker_overview_intro/img//image_layer_VE.png)
