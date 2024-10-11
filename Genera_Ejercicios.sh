#!/bin/bash

if [ -d $HOME/Defensa/ ]; then
    echo "Por favor Ejecute: "
    echo "cd $HOME/Defensa/ "
    echo "cat $HOME/Defensa/Ejercicios.txt"
    exit 1
fi

mkdir -p $HOME/Defensa/
PARCIAL="UTNFRA_SO_1P2C_2024"
DIR_BASE=$(dirname "$(readlink -f "$0")")
SCRIPT_DIR="${DIR_BASE}/.Enunciados"

# Numeros Random
NroEstructura="$(( ( RANDOM % 4 ) + 1 ))"
NroUser="$(( ( RANDOM % 2 ) + 1 ))"
NroPermisos="$(( ( RANDOM % 2 ) + 1 ))"

#echo " Se generaran los ejerciciso NroEstructura: $NroEstructura"
#echo " Se generaran los ejerciciso NroUser: $NroUser"
#echo " Se generaran los ejerciciso NroPermisos: $NroPermisos"

# --- Genera Enunciado ---#
# Estructura:
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d ${SCRIPT_DIR}/E_Estructura_${NroEstructura}.txt.e > $HOME/Defensa/Ejercicios.txt 2> /dev/null)
# Permisos:
mkdir $HOME/Defensa/Permisos
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d $SCRIPT_DIR/E_Permisos_$NroPermisos.txt.e   >> $HOME/Defensa/Ejercicios.txt 2> /dev/null)
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d $SCRIPT_DIR/E_Permisos_$NroPermisos.txt.e   > $HOME/Defensa/Permisos/archivo.txt 2> /dev/null)

sudo chattr +i $HOME/Defensa/Ejercicios.txt
sudo chattr +i $HOME/Defensa/Permisos/archivo.txt

clear
echo
echo "Por favor Ejecute: "
echo "cd $HOME/Defensa/ "
echo "cat $HOME/Defensa/Ejercicios.txt"

