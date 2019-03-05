#!/bin/bash
source option-l.sh
source option-lsort.sh
source option-d.sh
source option-c.sh
source option-h.sh

while true; do
choice="$(zenity --width=600 --height=250 --list --column="""" --title="WiScript" \
"List available Acces Points." \
"List available Acces Points ordered by signal intensity." \
"Diactivate NetworkManager service." \
"Manually configur Acces point's acces." \
"Check update." \
"Help." \ )"
case "${choice}" in
"List available Acces Points." )
Function=$(option-l)
zenity --width=600 --height=300 --info --text="$Function" "" --title="WiScript" \
;;
"List available Acces Points ordered by signal intensity." )
Function=$(option-lsort)
zenity --width=600 --height=300 --info --text="$Function" "" --title="WiScript" \
;;
"Diactivate NetworkManager service." )
Function=$(option-d)
zenity --width=200 --height=100 --info --text="Networking Disactivated." "" --title="WiScript" \
;;
"Manually configur Acces point's acces." )
option-c
;;
"Check update." )
Function=$(update)
zenity --width=600 --height=100 --info --text="$Function" "" --title="WiScript" \
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
