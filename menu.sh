
#!/bin/sh 


##Mostrar el menu 
clear
echo "*** MENU ***"
echo " "
echo "¿Que quieres hacer ahora?"
echo " "
sleep 2

while :
do

echo "1) Conocer la temperatura y Humedad" 
echo "2) Cambiar colores"
echo "3) Escuchar musica"

###Elegir las opciones 
#while : 
#do 
##LEER EL TECLADO 
	read INPUT_STRING
       case $INPUT_STRING in

#Sí seleccionamos la opcion uno conoceremos la temperatura y humedad 
	       1) clear
	       		echo " "
	       		echo "Revisemos la tamperatura y la humedad"
			echo " "
		       python sensores.py
		       ;;
#Si elegimos la opci�n 2 cambiaremos los colores de la LCD 
	       2) clear
	       		echo "Cambiemos los colores a la pantalla"
			echo " " 
		       ./colores.sh
		       ;;
	       3) clear
		       echo "Escuchar musica"
		      ./menu_musica.sh 
		       ;; 
	       *)clear
		       echo "No has seleccionado una opcion valida"
		       ;; 
       esac
       sleep 2
      clear
      echo "Que mas quieres hacer?"
      echo " "

       done 
