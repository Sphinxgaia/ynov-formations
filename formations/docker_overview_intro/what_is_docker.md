# Qu'est-ce que docker ?


--------


## Virtualisation de machine (1/2)

- Division en plsueiurs machine
- Segmentation
- Réservation RAM, CPU, Stockage et OS
- Portabilité des applications complexe et non garantie
- Limitation des ressources


--------


##  Virtualisation de machine (2/2)

![image_VM](docker_overview_intro/img//image_VM.png)


--------


## Virtualisation d'environnement (1/3)

- Utilisation du kernel hôte pour créer de multiples systèmes de fichiers racine
- 1 Système de fichiers racine = 1 `container`
- 1 container possède ses propres processus, RAM et carte réseau


--------


##  Virtualisation d'environnement (2/3)

![image_VE](docker_overview_intro/img//image_VE.png)


--------


##  Virtualisation d'environnement (3/3)

- Plus `légé et rapide` qu'une VM
- Moins de contraintes sur `RAM & CPU`
- Plus de Containers que de VMs
- Plus adapater aux `microservices`


--------


## Pourquoi (1/2)

![image_APP_VM](docker_overview_intro/img//image_APP_VM.png)


--------


## Pourquoi (2/2)

![image_APP_VE](docker_overview_intro/img//image_APP_VE.png)


--------


## Docker & Linux (1/2)

- Au départ Docker = LXC
- Dispose de plusieurs fonctionnalités native du noyau linux

- `NAMESPACES` (isolation)
  - processus & du système de fichier
  - réseau & interface


--------


## Docker & Linux (2/2)

- `CGROUPS` (gestion)
  - RAM, CPU, block I/O, network
  - accès au différents périphériques (/dev/*)

- `IPTABLES` (communication)
  - entre containers sur le même hôte
  - containers & extérieur
