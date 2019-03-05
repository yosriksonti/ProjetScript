
function  Help () {
  echo -e "${YELLOW}-l: ${NC} List available Acces Points."
  echo -e "${YELLOW}-lsort: ${NC} List available Acces Points ordered by signal intensity."
  echo -e "${YELLOW}-d: ${NC} Diactivate NetworkManager service."
  echo -e "${YELLOW}-c: ${NC} Manually configur Acces point's acces."
  echo -e "${YELLOW}-v: ${NC} Current Version."
}

function version() {
  echo "WiScript version 0.1.69"
}
function update() {
  curl http://vps610775.ovh.net/version.txt --output checkversion.txt
  test=$(cat checkversion.txt)
  current =$(cat version.txt)
  if [[ $test != $current ]]; then
    curl http://vps610775.ovh.net/w15cr1p7.zip --output newver.zip
    echo "Version Updated"
  else
    echo "Version Up to dated"

  fi
  #statements
}
