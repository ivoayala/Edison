#!/bin/sh 
while :
do

echo "¿Que quieres escuchar?"

echo " "

echo "1) Pelicula"
echo "2) Cancion"
echo "x) Menu anterior"

	read INPUT_STRING 
	case $INPUT_STRING in 
	1)echo "¿Que cancion escuchas?"
		python harry_PotterV2.py
		;;
	2)echo "¿Que cancion escuchas ?"
		python take.py 
		;;
	x) clear
		./menu.sh
		;;	
	*) echo "No has elegido una opcion"
		./menu_musica.sh
		;; 
esac
clear
done 


