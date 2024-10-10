#!/bin/bash

DIR_BASE=$(dirname "$(readlink -f "$0")")
SCRIPT_DIR="${DIR_BASE}/Enunciados/"


NroEstructura="$(( ( RANDOM % 4 ) + 1 ))"
NroUser="$(( ( RANDOM % 2 ) + 1 ))"
NroPermisos="$(( ( RANDOM % 2 ) + 1 ))"


echo " Se generaran los ejerciciso NroEstructura: $NroEstructura"
echo " Se generaran los ejerciciso NroUser: $NroUser"
echo " Se generaran los ejerciciso NroPermisos: $NroPermisos"

# Genera Enunciado
#bash $SCRIPT_DIR/E_Permisos_${NroPermisos}.sh

mkdir $HOME/Defensa/

#Estructura:
cat $SCRIPT_DIR/E_Estructura_${NroEstructura}.txt | tee $HOME/Defensa/Ejercicios.txt

#Permisos:
cat $SCRIPT_DIR/E_Permisos_${NroPermisos}.txt | tee -a $HOME/Defensa/Ejercicios.txt
mkdir $HOME/Defensa/Permisos_${NroPermisos}
cat $SCRIPT_DIR/E_P${NroPermisos}.txt  | tee -a  $HOME/Defensa/Permisos_${NroPermisos}/archivo_${NroPermisos}.txt

