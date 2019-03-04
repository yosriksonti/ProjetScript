function  option-l () {
  nmcli d wifi list | sort | grep -v "*"
  #interface=$(iw dev | awk '$1=="Interface"{print $2}')
  #sudo iw dev $interface scan | egrep "SSID|signal" | sed -e "s/\tsignal: //" -e "s/\tSSID: //" | awk '{ORS = (NR % 2 == 0)? "\n" : " "; print}' 
}
