#!/bin/bash
E_NRO=$(grep "CODIGO:"  $HOME/Defensa/Ejercicios.txt | awk -F ':' '{print $5}')
echo
echo "Validar Segun Enunciado: ($E_NRO)"
echo


echo
echo "Permisos directorio:"
ls -ld  $HOME/Defensa/Permisos
echo
echo "Permisos Dentro del directorio:"
ls -l  $HOME/Defensa/Permisos
echo
echo "Contenido del archivo: "
cat  $HOME/Defensa/Permisos/archivo.txt
echo
echo


