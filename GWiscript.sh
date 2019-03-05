#!/bin/bash
source option-l.sh
source option-lsort.sh
source option-d.sh
source option-c.sh
source option-h.sh

while true; do
choice="$(zenity --width=600 --height=250 --list --column="""" --title="WiScript" \
"Lister les différents points d acces wifi." \
"Lister les points d acces wifi par ordre decroissant d intensite de signal." \
"Disactiver le service NetworkManager." \
"Configurer manuellement l accès a un point d acces." \
"Help." \ )"
case "${choice}" in
"Lister les différents points d acces wifi." )
Function=$(option-l)
zenity --width=600 --height=300 --info --text="$Function" "" --title="WiScript" \
;;
"Lister les points d acces wifi par ordre decroissant d intensite de signal." )
Function=$(option-lsort)
zenity --width=600 --height=300 --info --text="$Function" "" --title="WiScript" \
;;
"Disactiver le service NetworkManager." )
Function=$(option-d)
zenity --width=200 --height=100 --info --text="Networking Disactivated." "" --title="WiScript" \
;;
"Configurer manuellement l accès a un point d acces." )
option-c
;;
"Help." )
Function=$(Help)
zenity --width=600 --height=100 --info --text="$Function" "" --title="WiScript" \
;;
*)
break
;;
esac
done
