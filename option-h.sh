
function  Help () {
  echo -e "${YELLOW}-l: ${NC} Lister les différents points d'acces wifi."
  echo -e "${YELLOW}-lsort: ${NC} Lister les points d'acces wifi par ordre decroissant d'intensite de signal."
  echo -e "${YELLOW}-d: ${NC} Disactiver le service NetworkManager."
  echo -e "${YELLOW}-c: ${NC} Configurer manuellement l'accès a un point d'acces."
}

function version() {
  echo "WiScript version 0.1.69"
}
