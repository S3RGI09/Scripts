echo "Bienvenido al asistente de instalacion de Scan.py, vamos a empezar por lo basico, vamos a instalar las librerias de Nmap de python"
pip install python-nmap
echo "Ahora vamos a darle permisos de ejecucion a los archivos necesarios"
chmod +x ./scan.py
chmod +x ./scan1.0.py
chmod +x RecoverScanScript.sh
echo "Ya hemos acabado, ahora solo tiene que hacer en su terminal: ./scan.py"
echo "En este repositorio tambien viene instalada la version 1.0 de Scan por si la quiere probar, pero recomiendo que si quiere hacer trabajos serios utilice la version 3.0"
echo "Ahora se eliminara el asistente de instalacion de Scan, Gracias por descargarlo :) ahora a hackear"
echo "¡IMPORTANTE! Recuerda ser bueno, tu eres responsable de tus actos."
rm instalacion.sh
