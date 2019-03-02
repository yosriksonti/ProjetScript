function  option-c () {

  result=`nmcli d wifi list | awk '{print $1}' | grep -v "*"`

  ret=$(zenity --entry --title="Connecter au point d'accès" --text="sélectionner point d'accès" $result)

  nmcli d wifi connect $ret
}
