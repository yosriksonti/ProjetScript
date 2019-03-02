function  option-l () {
  nmcli d wifi list | sort | grep -v "*"
}
