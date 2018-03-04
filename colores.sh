#!/bin/sh
clear
tts=2
cat test_text.txt
sleep $tts 

echo " "

while :
do
	echo "a) Rojo "
       	echo "b) Azul "
       	echo "c) Verde"
       	echo "d) Rosa"
	echo "e) ¿Quieres conocer mi color favorito?"
	echo "x) Regresar al menú anterior"
       
	#while :
	#do 
       		read INPUT_STRING
       		case $INPUT_STRING in 
       			a)clear
			       	echo "Observa el color Rojo en la pantalla"
       				python colors.py 255 0 0
				sleep $tts
       				;;
				
       			b)clear
			       	echo "Observa el color azul en la pantalla"
				python colors.py 0 0 255
				sleep $tts
				;;
			c) clear 
				echo "Observa el color verde en la pantalla" 
				python colors.py 0 255 0
				sleep $tts
	     			;;
			d) clear 
				echo "Observa el color rosa"
				python colors.py 255 0 255
				sleep $tts
				;;
			e) clear
				echo "¿Quieres conocer mi color favorito?"
				python colorRandom.py   
				sleep $tts
				;;
			x) clear
				break
				;;
			*) clear
				echo "No has elegido ningun color"
				sleep tts
				;;  
		esac 
	#done
       clear
	echo "Escoge otro color"
 	echo " "	
done

./menu.sh







