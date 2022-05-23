echo "Bienvenido al Recuperador de Scan, esto sirve para recuperar el script Scan si a pasado algo en el codigo o un fallo tanto en clonar o en descargar el paquete python-nmap"
echo "Lo primero sera en desinstalar el paquete Python-nmap de su ordenador"
pip uninstall python-nmap
echo "Ahora que se a desinstalado Python-nmap hay que borrar la carpeta de scan, si le a cambiado de nombre o lugar, haga esto manualmente"
rm .gitignore Apache-LICENCE LICENSE README.md instalacion.sh scan.py scan1.0.py RecoverScanScript.sh
cd
rmdir scan
echo "Ya hemos borrado todos los archivos y la carpeta scan, ahora solo tenemos que volver a instalar scan de nuevo"
git clone https://github.com/S3RGI09/scan
cd scan
echo "Ya hemos instalado Scan desde github, ahora vamos a ejecutar el instalador de scan
chmod +x instalacion.sh
echo "Ya nos despedimos, aun no hemos acabado, pero solo me queda un comando por ejecutar y es el de instalacion, el te guiara a volver a tener todo como antes, gracias por usarme y espero que no nos volvamos a ver jajaja."
./instalacion.sh
