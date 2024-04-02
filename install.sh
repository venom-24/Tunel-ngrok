#! /data/data/com.termux/files/usr/bin/bash


#variables
	        red='\033[1;31m'      
                green='\033[1;32m'        
                yellow='\033[1;33m'                  
                blue='\033[1;34m'            
                magenta='\033[1;35m'     
                cyan='\033[1;36m'        
                reset='\033[0m'

printf $blue		
echo "
 
             ░▀█▀░░░░░█▀█░█▀▀░█▀▄░█▀█░█░█
             ░░█░░▄▄▄░█░█░█░█░█▀▄░█░█░█▀▄
             ░░▀░░░░░░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀
"
sleep 2
printf $reset
rm $PREFIX/bin/ngrok
rm -rf $PREFIX/share/ngrok
mkdir -p $PREFIX/share/ngrok
cp full-ngrok.sh $PREFIX/share/ngrok
cp ngrok $PREFIX/bin
apt update && apt upgrade -y
apt install -y proot wget resolv-conf
apt clean
apt autoremove
cd $PREFIX/share/ngrok
bash full-ngrok.sh 
 printf $green
echo "Ngrok instalado correctamente!!"
 printf $blue

echo "Ingresa tu key"
echo "Inicia ngrok"
printf $reset

