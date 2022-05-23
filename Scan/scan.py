#!/usr/bin/python3
import nmap
print("\033[2J\033[1;1f") # Borrar pantalla y situar cursor

print()
print("\033[1;31m"+"-----------------------------------")
print("\033[1;31m"+"| ___________________________   __|")
print("\033[1;31m"+"| __  ___/_  ____/__    |__  | / /|")
print("\033[1;31m"+"| _____ \_  /    __  /| |_   |/ / | github.com/S3RGI09")
print("\033[1;31m"+"| ____/ // /___  _  ___ |  /|  /  |")
print("\033[1;31m"+"| /____/ \____/  /_/  |_/_/ |_/   | V3.0")
print("\033[1;31m"+"|////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|")
print("\033[1;31m"+"-----------------------------------")
print("\033[1;34m"+"        / \ / \ / \ / \ ")
print("\033[1;34m"+"       ( N | M | A | P )")
print("\033[1;34m"+"        \_/ \_/ \_/ \_/")
print("---------------------------------------------------------------------"+'\033[0;m')
print("\033[1;33m"+"[Info] Herramienta para escanear los puertos abiertos de una IP"+'\033[0;m')
print("\033[1;34m"+"  ||   Programada por S3RGI09 (Sergio Casero Verdial) "+'\033[0;m')
print("\033[1;35m"+"* Para equipos mas antiguos: ScanLite en mi github"+'\033[0;m')
print("\033[1;35m"+"* IG: s3rgi09__ | GitHub: S3RGI09")
print("\033[0;37;41m"+"[=] Script con licencia GNU GPL, Apache Licence y Mozilla MPL"+'\033[0;m')
print("\033[5;1;31;40m"+"[!] Puede cancelar el escaneo en cualquier momento haciendo: [Ctrl+C]"+'\033[0;m')
print("\033[1;34m"+"---------------------------------------------------------------------"+'\033[0;m')
host= input("\033[1;32m"+"[+] IP Objetivo ==> "+'\033[0;m') 
print("\033[1;34m"+"---------------------------------------------------------------------")
nm= nmap.PortScanner()
puertos_abiertos="nmap -p "
results = nm.scan(hosts=host,arguments="-sT -n -Pn -T4")
count=0
#print (results)
print("\nHost : %s" % host)
print("Estado : %s" % nm[host].state())
for proto in nm[host].all_protocols():
	print("Protocolo : %s" % proto)
	print()
	lport = nm[host][proto].keys()
	sorted(lport)
	for port in lport:
		print ("Puerto : %s\tServicio : %s" % (port, nm[host][proto][port]["name"]))
		if count==0:
			puertos_abiertos=puertos_abiertos+str(port)
			count=1
		else:
			puertos_abiertos=puertos_abiertos+","+str(port)

print("\nPuertos abiertos: "+ puertos_abiertos +" "+str(host))
print("\033[1;34m"+"---------------------------------------------------------------------")
