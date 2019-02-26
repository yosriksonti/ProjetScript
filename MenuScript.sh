#!/bin/bash
source option-l.sh
source option-lsort.sh
source option-d.sh


if [[ $# -eq 0 ]]; then
echo "-l: Lister les différents points d'acces wifi."
echo "-lsort: Lister les points d'acces wifi par ordre decroissant d'intensite de signal."
echo "-d: Disactiver le service NetworkManager."
echo "-c: Configurer manuellement l'accès a un point d'acces."
echo "-help: Help."

read Choix

else
Choix=$1
fi

case "$Choix" in
	
	"-l")	
		option-l
		;;
	"-lsort")
		option-lsort
		;;
	"-d")
		option-d
		;;
	"-c")
		echo "4"
		;;
	"-h")
		echo "5"
		;;
esac

