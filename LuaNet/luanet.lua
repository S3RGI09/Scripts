local socket = require("socket")
local http = require("socket.http")
local ltn12 = require("ltn12")

-- Logo ASCII
local logo = [[
______                 _____   __      _____
___  / ____  ________ ____  | / /_____ __  /_
__  /  _  / / /_  __ `/__   |/ / _  _ \_  __/
_  /___/ /_/ / / /_/ / _  /|  /  /  __// /_
/_____/\__,_/  \__,_/  /_/ |_/   \___/ \__/



]]

-- LuaNet
local programa_nombre = "Herramienta de Administración de Infraestructura"

-- Solicitar la dirección IP del router al usuario
print("Por favor, introduce la dirección IP del router:")
local router_ip = io.read()

-- Función para el descubrimiento de red LAN
function network_discovery()
    print("Realizando descubrimiento de dispositivos en la red LAN...")
    local reachable_devices = {}

    for host = 1, 254 do
        local ip = "192.168.1." .. host  -- Cambia esta subred por la de tu LAN
        local ping_success = os.execute("ping -c 1 " .. ip .. " >/dev/null")
        if ping_success then
            table.insert(reachable_devices, ip)
        end
    end

    return reachable_devices
end

-- Función para la medición de velocidad de Internet
function internet_speed_test()
    print("Realizando prueba de velocidad de Internet...")
    local download_speed

    local res, status = http.request({
        url = "http://speedtest.net/speedtest/random4000x4000.jpg",
        method = "HEAD"
    })

    if status == 200 then
        local start_time = socket.gettime()
        local data = {}
        local res, status = http.request({
            url = "http://speedtest.net/speedtest/random4000x4000.jpg",
            sink = ltn12.sink.table(data)
        })
        local end_time = socket.gettime()
        local duration = end_time - start_time
        local file_size = #table.concat(data)
        download_speed = file_size / duration / 1024 / 1024  -- MB/s
    else
        download_speed = "No se pudo conectar al servidor de prueba"
    end

    return download_speed
end

-- Función para la medición de velocidad hacia el router
function router_speed_test()
    print("Realizando prueba de velocidad al router...")
    local ping_success = os.execute("ping -c 1 " .. router_ip .. " >/dev/null")
    
    if ping_success then
        return "Exitoso"
    else
        return "Fallido"
    end
end

-- Función para el descubrimiento de puertos en una IP específica
function port_discovery(ip, start_port, end_port)
    print("Realizando descubrimiento de puertos en la IP " .. ip .. "...")
    local open_ports = {}

    for port = start_port, end_port do
        local sock = socket.tcp()
        sock:settimeout(1, 't')
        local result = sock:connect(ip, port)

        if result == nil then
            table.insert(open_ports, port)
        end

        sock:close()
    end

    return open_ports
end

-- Función para obtener información del sistema
function system_info()
    print("Obteniendo información del sistema...")
    local uname = io.popen("uname -a"):read("*a")
    return uname
end

-- Menú de opciones
function main_menu()
    print(logo)
    print(programa_nombre)
    print("")
    print("Menú de opciones:")
    print("1. Descubrir dispositivos en la red LAN")
    print("2. Medir velocidad de Internet")
    print("3. Medir velocidad hacia el router")
    print("4. Descubrir puertos en una dirección IP")
    print("5. Obtener información del sistema")
    print("6. Salir")
    print("")

    io.write("Por favor, selecciona una opción: ")
    local option = tonumber(io.read())

    if option == 1 then
        local reachable_devices = network_discovery()
        print("Dispositivos alcanzables en la red LAN:")
        for _, device in ipairs(reachable_devices) do
            print(device)
        end
    elseif option == 2 then
        local download_speed = internet_speed_test()
        print("Velocidad de Internet (Descarga): " .. download_speed .. " Mbps")
    elseif option == 3 then
        local router_ping_result = router_speed_test()
        print("Ping al router: " .. router_ping_result)
    elseif option == 4 then
        io.write("Por favor, introduce la dirección IP a escanear: ")
        local ip = io.read()
        io.write("Por favor, introduce el puerto inicial: ")
        local start_port = tonumber(io.read())
        io.write("Por favor, introduce el puerto final: ")
        local end_port = tonumber(io.read())
        local open_ports = port_discovery(ip, start_port, end_port)
        print("Puertos abiertos en la IP " .. ip .. ":")
        for _, port in ipairs(open_ports) do
            print(port)
        end
    elseif option == 5 then
        local system_info_result = system_info()
        print("Información del sistema:")
        print(system_info_result)
    elseif option == 6 then
        print("Saliendo del programa...")
        os.exit()
    else
        print("Opción inválida. Por favor, selecciona una opción válida.")
    end

    main_menu()
end

-- Ejecutar el menú principal
print("Iniciando administración de infraestructura...")
main_menu()
