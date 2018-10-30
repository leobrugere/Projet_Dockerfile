#!/bin/bash

echo "Taper l'adresse IP de l'hôte distant : "
read ip_host

printf "Choisir l'image à télécharger sur la machine distante\n1. Apache2 \n2. MySQL\n"

read choice
if [ $choice -eq 1 ]
then
	echo 'Téléchargement Apache2'
	#docker pull projet.docker/apache2/apache2:latest
	echo 'Normalement devrait se télécharger une image Apache2 depuis Harbor. Mais bon' 
        docker run -d -p 80:80  projet.docker/apache2/apache2

elif [ $choice -eq 2 ]
then
	echo 'Téléchargement MySQL'
	docker pull projet.docker/yolo/ubuntu:latest
	docker run -d projet.docker/yolo/ubuntu
else
	echo "Merci de sélectionner une image existant"
fi
