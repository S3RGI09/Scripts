#!/usr/bin/python3
import nmap

def print_banner():
    print("\033[2J\033[1;1f")
    print()
    print("\033[1;31m" + "-----------------------------------")
    print("\033[1;31m" + "| ___________________________   __|")
    print("\033[1;31m" + "| __  ___/_  ____/__    |__  | / /|")
    print("\033[1;31m" + "| _____ \\_  /    __  /| |_   |/ / | github.com/S3RGI09")
    print("\033[1;31m" + "| ____/ // /___  _  ___ |  /|  /  |")
    print("\033[1;31m" + "| /____/ \\____/  /_/  |_/_/ |_/  | V3.5 BETA")
    print("\033[1;31m" + "|////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|")
    print("\033[1;31m" + "-----------------------------------")
    print("\033[1;34m" + "        / \\ / \\ / \\ / \\")
    print("\033[1;34m" + "       ( N | M | A | P )")
    print("\033[1;34m" + "        \\_/ \\_/ \\_/ \\_/")
    print("---------------------------------------------------------------------" + '\033[0;m')
    print("\033[1;33m" + "[Info] Herramienta para escanear los puertos abiertos de una IP" + '\033[0;m')
    print("\033[1;34m" + "  ||   Programada por S3RGI09 (Sergio Casero Verdial) " + '\033[0;m')
    print("\033[1;35m" + "* Para equipos mas antiguos: ScanLite en mi github" + '\033[0;m')
    print("\033[1;35m" + "* IG: s3rgi09__ | GitHub: S3RGI09")
    print("\033[0;37;41m" + "[=] Script con licencia GNU GPL, Apache Licence y Mozilla MPL" + '\033[0;m')
    print("\033[5;1;31;40m" + "[!] Puede cancelar el escaneo en cualquier momento haciendo: [Ctrl+C]" + '\033[0;m')
    print("\033[1;34m" + "---------------------------------------------------------------------" + '\033[0;m')

def scan_ports(target):
    nm = nmap.PortScanner()
    puertos_abiertos = []
    results = nm.scan(hosts=target, arguments="-sT -n -Pn -T4")
    
    print(f"\nHost : {target}")
    print("Estado : %s" % nm[target].state())
    
    for proto in nm[target].all_protocols():
        print(f"Protocolo : {proto}\n")
        lport = sorted(nm[target][proto].keys())
        for port in lport:
            service_name = nm[target][proto][port]["name"]
            port_state = nm[target][proto][port]["state"]
            print(f"Puerto : {port}\tServicio : {service_name}\tEstado : {port_state}")
            puertos_abiertos.append(str(port))
    
    print("\nPuertos abiertos:", ", ".join(puertos_abiertos), target)
    print("\033[1;34m" + "---------------------------------------------------------------------")

if __name__ == "__main__":
    print_banner()
    target_ip = input("\033[1;32m" + "[+] IP Objetivo ==> " + '\033[0;m')
    scan_ports(target_ip)
