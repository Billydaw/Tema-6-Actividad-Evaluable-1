#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l `
numlinea=1
logs=0
read -p "Dime un nombre de usuario " usuario
while  [ $numlinea -le $maxlineas ];do
linea=`cat usuarios.txt | head -$numlinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dias=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $usuario = $user ];then
logs=$((logs+1))
fi
numlinea=$((numlinea+1))
done
if [ $logs = "0" ];then
echo "No se ha logeado"
else
echo "$logs"
fi
