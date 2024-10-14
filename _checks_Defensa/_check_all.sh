#!/bin/bash
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

clear
bash $SCRIPT_DIR/check_A.sh
bash $SCRIPT_DIR/check_B.sh
bash $SCRIPT_DIR/check_C.sh
bash $SCRIPT_DIR/check_D.sh


echo "Ver Detalles Punto por punto."
read -p "[Enter] para continuar..." RTA_VER
clear

echo
echo "Script Punto A:"
cat $HOME/Defensa/script_Puntos/Def_PuntoA.sh
echo
read -p "[Enter] para continuar..." RTA_VER
clear

echo
echo "Script Punto B:"
cat $HOME/Defensa/script_Puntos/Def_PuntoB.sh
echo
read -p "[Enter] para continuar..." RTA_VER
clear

echo
echo "Script Punto C:"
cat $HOME/Defensa/script_Puntos/Def_PuntoC.sh
echo
read -p "[Enter] para continuar..." RTA_VER
clear

echo
echo "Script Punto D:"
cat $HOME/Defensa/script_Puntos/Def_PuntoD.sh
echo
read -p "[Enter] para continuar..." RTA_VER

