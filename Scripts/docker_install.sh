#!/bin/bash



PS3="Quelle est la version de votre OS "


select item in "- centos " "- ubuntu " "- autre " "- Quitter "
do


    case "$REPLY" in


        1)
            # CentOS
            yum update
            yum install -y yum-utils device-mapper-persistent-data lvm2
            rpm --import https://download.docker.com/linux/centos/gpg
            yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
            yum install docker-ce
            systemctl enable docker && sudo systemctl start docker

            ;;
        2)

            # Ubuntu
            apt-get update
            apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
            apt-get install apt-transport-https ca-certificates curl software-properties-common
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
            add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
            apt-get update
            apt-get install docker-ce

            ;;
        3)
            # Autre
            echo "merci de vous rendre :  https://docs.docker.com/engine/installation/#server"
            ;;
        4)
            # On quitte le programme
            exit 0
            ;;
        *)
            # Pour n'importe que autre choix, signaler l'erreur et patienter
            echo "Saisie Incorrecte \c"
            read x
            ;;

    esac

done
