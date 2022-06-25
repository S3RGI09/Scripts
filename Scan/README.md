![68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d47504c25323076332532422d626c75652e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d626430303030](https://user-images.githubusercontent.com/96842235/171992050-b7b0c6f9-e271-4bad-a1fd-9f21f14f36b8.svg) ![68747470733a2f2f696d672e736869656c64732e696f2f62616467652f626173682d342e322532422d626c75652e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d303064623030](https://user-images.githubusercontent.com/96842235/171992186-718343e4-ef4f-4d22-8124-2ccb4fe27e2e.svg) ![68747470733a2f2f696d672e736869656c64732e696f2f646f636b65722f636c6f75642f6175746f6d617465642f763173317430723173683372332f616972676564646f6e2e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d613961396139](https://user-images.githubusercontent.com/96842235/171992192-c2f13808-034a-4ccc-ab7e-b0f9083e66fa.svg)


![$  Scan py (1)](https://user-images.githubusercontent.com/96842235/171235719-1050cbde-b60f-4aa4-a41b-4a68455909dc.png)

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Introduccion a Scan
Herramienta para escanear puertos de una IP. El script escrito en python funciona gracias a la libreria "Python-nmap" que puede ver en la web Indices de Paquetes de Python (PyPI) e instalar con pip, lo comodo de esto es que no es necesario hacer todo esto, ya que el repositorio tiene un pequeño script llamado "instalacion.sh" para automatizar todas estas tareas y darle permisos de ejecucion al script.

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Como hacer un escaneo
Hacer un escaneo con Nmap puede llegar a ser algo dificil para la gente que recien a empezado en la informatica por culpa de todos sus parametros, yo lo que recomiendo es que si estas aprendiendo NO UTILICES ESTE SCRIPT, ya que lo unico que aprenderias sera a tenerlo todo echo. Pero si eres un profesional o un aficionado con conceptos avanzados sobre Nmap y su sondeo, este script solo te hara ahorrar tiempo. Para iniciar un escaneo es muy simple, solo vete al directorio donde tienes el archivo del script y haz en tu consola ```./scan.py``` si le has asignado permisos de ejecucion, si no tendras que hacer un ```python scan.py```, de las dos maneras tendras el script corriendo, ahora solo pon la IP a la que quieres hacer el escaneo, en unos 2-3 segundos tendras los resultados del escaneo en tu pantalla.
![Captura de pantalla_2022-05-08_22-04-01](https://user-images.githubusercontent.com/96842235/167313797-12f5d574-fc3d-4f9b-85e2-3de28296440d.png)

---------------------------------------------------------------------------------------------------------------------------------------------------------

## No funciona el escaneo
Si el escaneo no funciona, asegurate de que tienes el paquete Python-nmap instalado, si no lo tienes haz un ```pip install python-nmap```.
Si aun asi no funciona y te sale un error de sintaxis o de nombre, copia el codigo de Scan desde GitHub a tu script de Scan, esto puede ser porque alguien o tu ha tocado el codigo de Scan y a puesto algo que bloquee otra cosa.
Si sigue sin funcionar y su pc o laptop tiene un hardware muy antiguo instale ScanLite, tambien en mi GitHub.

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Como instalar Scan
Para instalar el script es muy simple y hay dos opciones. La primera y la más facil es ejecutar en tu terminal ```ash instalacion.sh```, este archvio es un pequeño script que sirve para realizar todas las tareas para utilizar correctamente Scan sin errores. Y la segunda es seguir un pequeño resumen de la instalacion que haremos aqui:

[Paso 1:] Vamos a empezar por lo basico, instalaremos la libreria Python-nmap, ponga en su consola: ```pip install python-nmap```

[Paso 2:] Ahora hay que dar permisos de ejecucion al script y a todo lo necesario, ponga en su terminal los siguientes comandos, solo funciona en sistemas tipo UNIX-LIKE: ```chmod +x ./scan.py ./scan1.0.py RecoverScanScript.sh```

[Paso 3:] Ya hemos acabado, ahora puede borrar el archivo instalacion.sh si quiere, ahora a hackear y a pasarlo bien.

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Scan:Version 1.0
En este repositorio viene incluido la primera version del script Scan, esta version esta hay para que vea el avance, las mejoras y el contrastre desde la primera version a la ultima. No tiene nada util en el fondo ya que es mas lento que la ultima version y mas simple.
![Screenshot_2022-05-08_22_06_50](https://user-images.githubusercontent.com/96842235/167313912-a427bd67-7291-485b-89b2-b244dcc247f3.png)

---------------------------------------------------------------------------------------------------------------------------------------------------------

## RecoverScanScript
Este script creado en Bash sirve para recuperar el script Scan. Es una herramienta de recuperacion para solucionar errores por si a pasado algo en el paquete Python-nmap, como que no se a descargado correctamente. Este script borra todos los datos de la carpeta Scan y todos sus archivos dentro de la carpeta al igual que el paquete python nmap y reinstala el repositorio de github. Una vez instalado el repositorio, ejecuta el instalador de Scan, y se instala el paquete Python-nmap, se le da permisos de ejecucion a todos los archivos y se borra a si mismo para tener todo como el primer dia. esta herramienta esta pensada para resolver errores graves como un problema al instalar el repositorio o el paquete Python-nmap.

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Bugzilla
Scan a sido depurado con software como **Bugzilla** de la fundacion Mozilla y a sido capaz de superar las pruebas de consumo de hardware, consumiendo menos de un 15% en procesadores Intel y 20% en AMD. Tambien a sido probado en una raspberry pi 4 de 4 GB de ram realizando el escaneo en 4 segundos. Si encuntra un Bug o un error, envia un correo a **sergiocaseroverdial@gmail.com** para intentar solucionarlo.

---------------------------------------------------------------------------------------------------------------------------------------------------------

## Fin
Le doy gracias a todo el mundo que a instalado Scan, a mi me alegra saber que estoy contribuyendo en ayudar a otras personas que comparten la misma pasion por la informatica que yo, la verdad, si yo hubiese tenido este script cuando habia aprendido medianamente nmap, me las habria gozado, literalmente podria estar ahora mismo en la carcel por haber hackeado la red wifi de el centro comercial de mi ciudad (Nunca lo e echo, NUNCA) espero que os halla servido esta informacion y sobre todo el script.
