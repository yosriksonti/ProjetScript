function  option-d() {
  nmcli n off
  echo -e "\a"
  echo -ne '####                      (33%)\r'
  sleep 0.5
  echo -ne '#########                 (45%)\r'
  sleep 0.5
  echo -ne '#################         (71%)\r'
  sleep 0.5
  echo -ne '#######################   (100%)\r'
  echo -ne '\n \n'
  echo -e "${YELLOW} Désactivé avec success !"
  #interface=$(iw dev | awk '$1=="Interface"{print $2}')
  #sudo ifconfig $interface down
}
