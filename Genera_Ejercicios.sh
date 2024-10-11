#!/bin/bash

DIR_BASE=$(dirname "$(readlink -f "$0")")
SCRIPT_DIR="${DIR_BASE}/Enunciados"

# Numeros Random
NroEstructura="$(( ( RANDOM % 4 ) + 1 ))"
NroUser="$(( ( RANDOM % 2 ) + 1 ))"
NroPermisos="$(( ( RANDOM % 2 ) + 1 ))"


#echo " Se generaran los ejerciciso NroEstructura: $NroEstructura"
#echo " Se generaran los ejerciciso NroUser: $NroUser"
#echo " Se generaran los ejerciciso NroPermisos: $NroPermisos"


if [ -d $HOME/Defensa/ ]; then
    echo "Por favor Ejecute: "
    echo "cd $HOME/Defensa/ "
    echo "cat $HOME/Defensa/Ejercicios.txt"
    exit 1
fi

mkdir -p $HOME/Defensa/

# --- Genera Enunciado ---#
#Estructura:
cat $SCRIPT_DIR/E_Estructura_${NroEstructura}.txt >  $HOME/Defensa/Ejercicios.txt
#Permisos:
cat $SCRIPT_DIR/E_Permisos_${NroPermisos}.txt >> $HOME/Defensa/Ejercicios.txt 
mkdir $HOME/Defensa/Permisos
cat $SCRIPT_DIR/E_Permisos_${NroPermisos}.txt > $HOME/Defensa/Permisos/archivo.txt
sudo chattr +i $HOME/Defensa/Ejercicios.txt
sudo chattr +i $HOME/Defensa/Permisos/archivo.txt
echo
echo
#cat $SCRIPT_DIR/E_P${NroPermisos}.txt  >>  $HOME/Defensa/Permisos_${NroPermisos}/archivo_${NroPermisos}.txt
#cat $HOME/Defensa/Permisos_${NroPermisos}/archivo_${NroPermisos}.txt
echo

clear
echo "Por favor Ejecute: "
echo "cd $HOME/Defensa/ "
echo "cat $HOME/Defensa/Ejercicios.txt"

