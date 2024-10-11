#!/bin/bash

DIR_BASE=$(dirname "$(readlink -f "$0")")
SCRIPT_DIR="${DIR_BASE}/Enunciados"


NroEstructura="$(( ( RANDOM % 4 ) + 1 ))"
NroUser="$(( ( RANDOM % 2 ) + 1 ))"
NroPermisos="$(( ( RANDOM % 2 ) + 1 ))"


echo " Se generaran los ejerciciso NroEstructura: $NroEstructura"
echo " Se generaran los ejerciciso NroUser: $NroUser"
echo " Se generaran los ejerciciso NroPermisos: $NroPermisos"

# Genera Enunciado
#bash $SCRIPT_DIR/E_Permisos_${NroPermisos}.sh

rm -rf $HOME/Defensa/
mkdir -p $HOME/Defensa/

#Estructura:
cat $SCRIPT_DIR/E_Estructura_${NroEstructura}.txt >  $HOME/Defensa/Ejercicios.txt

#Permisos:
cat $SCRIPT_DIR/E_Permisos_${NroPermisos}.txt >> $HOME/Defensa/Ejercicios.txt
mkdir $HOME/Defensa/Permisos_${NroPermisos}
echo
sudo ls -ld $HOME/Defensa/Permisos_${NroPermisos} 
echo
cat $SCRIPT_DIR/E_P${NroPermisos}.txt  >>  $HOME/Defensa/Permisos_${NroPermisos}/archivo_${NroPermisos}.txt
cat $HOME/Defensa/Permisos_${NroPermisos}/archivo_${NroPermisos}.txt
echo

clear
echo "Por favor Ejecute: "
echo "cd $HOME/Defensa/ "
echo "cat $HOME/Defensa/Ejercicios.txt"
