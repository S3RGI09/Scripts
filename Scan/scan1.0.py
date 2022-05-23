import nmap

print (" ____   ____    _    _   _ ")
print ("/ ___| / ___|  / \  | \ | |")
print ("\___ \| |     / _ \ |  \| |")
print (" ___) | |___ / ___ \| |\  |")
print ("|____/ \____/_/   \_\_| \_|")

print("[Info] Herramienta para escanear los puertos abiertos de una IP")
print("  ||   Creada por S3RGI09 (Sergio Casero Verdial)")

ip=input("[+] Introduce la IP objetivo: ")
nm = nmap.PortScanner()
puertos_abiertos="-p "
results = nm.scan(hosts=ip,arguments="-sV -T4")
count=0
#print (results)
print("\nHost : %s" % ip)
print("State : %s" % nm[ip].state())
for proto in nm[ip].all_protocols():
        print("Protocol : %s" % proto)
        print()
        lport = nm[ip][proto].keys()
        sorted(lport)
        for port in lport:
                print ("port : %s\tstate : %s" % (port, nm[ip][proto][port]["state"]))
                if count==0:
                        puertos_abiertos=puertos_abiertos+str(port)
                        count=1
                else:
                        puertos_abiertos=puertos_abiertos+","+str(port)

print("\nPuertos abiertos: "+ puertos_abiertos +" "+str(ip))
