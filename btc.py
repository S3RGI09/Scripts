#!/usr/bin/python3
from random import choice
print("\033[2J\033[1;1f") # Borrar pantalla y situar cursor
btc= input("\033[1;33;40mIntroduce la direccion de Bitcoin: ")
print()
print ("\033[1;31;40m   ----------------------------------")
print ("\033[1;31;40m   +                +               +")
print ("\033[1;31;40m   | Entrada Total  | Salida Total  |")
print ("\033[1;31;40m   +                +               +")
print ("\033[1;31;40m   ----------------------------------")
print ("\033[1;31;40m   |0.00013784 BTC  |0.00001138 BTC |")
print ("   ---------------------------------")
print()
longitud = 64
valores = "0123456789abcdefghijklmnopqrstuvwxyz"

p = ""
p = p.join([choice(valores) for i in range(longitud)])
print("\033[1;34m"+"El hash que a echo la transferencia es: "+p)
print()
print("\033[1;36;40mHash analizado: "+btc)
print("\033[1;36;40mHash destino de BTC: "+p)

