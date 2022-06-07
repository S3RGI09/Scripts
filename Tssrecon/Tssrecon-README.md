# Manual de instrucciones de tssrecon
Script creado en Bash para automatizar la fase de reconocimiento.

---------------------------------------------------------------------------------------------------------------------------------------------------------

Para ponerlo en marcha hay que seguir estos pasos:
$ cd tssrecon
$ ./tssrecon.sh (introducir la IP objetivo)

---------------------------------------------------------------------------------------------------------------------------------------------------------

![Captura de pantalla_2022-05-11_23-24-36](https://user-images.githubusercontent.com/96842235/167950278-05fd70cd-c0a4-4b6a-b017-c0f56bd31c7c.png)

## Otras herramientas
La version del script es V1.5 por lo que esta un poco anticuada al pentest avanzado, por lo que si quieres tener una herramienta funcional avanzada puedes usar [TssPentest](https://github.com/S3RGI09/TssPentest), el script es muy potente y mucho mejor que este script:
```
User
-----------------------------------------------------------------------
|  _______               ______               __                __    |
| |_     _|.-----.-----.|   __ \.-----.-----.|  |_.-----.-----.|  |_  |
|   |   |  |__ --|__ --||    __/|  -__|     ||   _|  -__|__ --||   _| |
|   |___|  |_____|_____||___|   |_____|__|__||____|_____|_____||____| |
-----------------------------------------------------------------------
[info] Script multiusos para pentest
  ||   Script programado por S3RGI09 (Sergio Casero Veridal)
*      Esta herramienta es una version más completa de TssRecon \033[0m
*      Script con licencia GNU GPL | El script utiliza Scan.py
*      IG: s3rgi09__ | GitHub: S3RGI09
[+]    Introduce el objetivo (ejemplo: objetivo.com): 
```
Si solo quieres hacer un escaneo de puertos puedes tirar de [Scan](https://github.com/S3RGI09/scan)
```
-----------------------------------
| ___________________________   __|
| __  ___/_  ____/__    |__  | / /|
| _____ \_  /    __  /| |_   |/ / | github.com/S3RGI09
| ____/ // /___  _  ___ |  /|  /  |
| /____/ \____/  /_/  |_/_/ |_/   | V3.0
|////////////////\\\\\\\\\\\\\\\\\|
-----------------------------------
        / \ / \ / \ / \ 
       ( N | M | A | P )
        \_/ \_/ \_/ \_/
---------------------------------------------------------------------
[Info] Herramienta para escanear los puertos abiertos de una IP
  ||   Programada por S3RGI09 (Sergio Casero Verdial) 
* Para equipos mas antiguos: ScanLite en mi github
* IG: s3rgi09__ | GitHub: S3RGI09
[=] Script con licencia GNU GPL, Apache Licence y Mozilla MPL
[!] Puede cancelar el escaneo en cualquier momento haciendo: [Ctrl+C]
---------------------------------------------------------------------
[+] IP Objetivo ==> 192.168.X.X
---------------------------------------------------------------------

Host : 192.168.X.X
Estado : up
Protocolo : tcp

Puerto : 53     Servicio : domain
Puerto : 80     Servicio : http
Puerto : 139    Servicio : netbios-ssn
Puerto : 443    Servicio : https
Puerto : 445    Servicio : microsoft-ds
Puerto : 6969   Servicio : acmsoda                                                                                           
Puerto : 8080   Servicio : http-proxy                                                                                        
                                                                                                                             
Puertos abiertos: nmap -p 53,80,139,443,445,6969,8080 192.168.X.X                                                            
---------------------------------------------------------------------                                                        
```
