#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
conex=0
read -p "Dime un mes " meses
while [ $numlinea -le $maxlineas ];do
linea=`cat usuarios.txt | head -$numlinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dia=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $meses = $mes ]; then 
echo $dia
else
conex=$((conex+1))
fi
numlinea=$((numlinea+1))
done
if [ $conex = 0 ];then
echo "0"
fi
