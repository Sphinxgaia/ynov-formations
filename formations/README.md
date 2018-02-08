# Formations Ynov

## Author : Jérôme Masson <sphinxgaia@jeromemasson.fr>

~~~bash
  __   __                   __                  __   __   __        ___  __
 /__` |__) |__| | |\ | \_/ / _`  /\  |  /\     |  \ /  \ /  ` |__/ |__  |__)
 .__/ |    |  | | | \| / \ \__> /~~\ | /~~\    |__/ \__/ \__, |  \ |___ |  \

                    ##        .
              ## ## ##       ==
           ## ## ## ##      ===                 __     __
       /""""""""""""""""\___/ ===               \ \   / /
  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~         \ \_/ / __   _____   __
       \______ o          __/                     \   / '_ \ / _ \ \ / /
         \    \        __/                         | || | | | (_) \ V /
          \____\______/                            |_||_| |_|\___/ \_/



   __              _
  / /  __ __      (_)__ _______  __ _  ___     __ _  ___ ____ ___ ___  ___
 / _ \/ // /     / / -_) __/ _ \/  ' \/ -_)   /  ' \/ _ `(_-<(_-</ _ \/ _ \
/_.__/\_, /   __/ /\__/_/  \___/_/_/_/\__/   /_/_/_/\_,_/___/___/\___/_//_/
     /___/   |___/

~~~


# Pré-requis Global Docker
Are you compatible with docker ? check your kernel config

~~~bash

wget https://github.com/Sphinxgaia/ynov-formations/tree/master/Scripts/checkconfig.sh

~~~



# Formation Docker Overview

## Avant propos

Voir le README.md dans chaque dossier pour comprendre son fonctionnement

## Convertion OVF en HYPER-V

~~~powershell
# Import the Converter Powershell Module
Import-Module "C:\Program Files\Microsoft Virtual Machine Converter\MvmcCmdlet.psd1"
# Convert the VMware .vmdk to a Hyper-V .vhdx
ConvertTo-MvmcVirtualHardDisk -SourceLiteralPath "D:\Debian8\Debian8-disk1.vmdk" -DestinationLiteralPath "D:\Debian8.vhdx" -VhdType DynamicHardDisk -VhdFormat Vhdx
~~~

## Format

- Durée : 3h
- Présentation
- TP

## Objectif de la formation

- Introduction
  - [x] Qu'est ce que c'est Docker ?
  - [x] Comprendre le fonctionnement
  - [x] Comment installer Docker
  - [x] Les commandes de base
  - [x] Les containers Docker
  - [x] Les images Docker
  - [x] Les volumes Docker
  - [x] Les réseaux Docker
  - [x] Les logs Docker

- Advanced
  - Mixte
    - [x] Création d'une image docker
    - [x] Auto build avec docker hub
    - [x] Reverse Proxy / Proxy
    - [x] Registry
    - [x] Orchestration
  - Infra
    - [x] CI
  - Dev
    - [x] Microservices
