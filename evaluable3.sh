#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1

read -p "Dime un dia " dias
read -p "Dime un mes " meses

while [ $numlinea -le $maxlineas ];do
linea=`cat usuarios.txt | head -$numlinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dia=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $dias = $dia ] && [ $meses = $mes ]; then 
echo $user
fi
numlinea=$((numlinea+1))
done
