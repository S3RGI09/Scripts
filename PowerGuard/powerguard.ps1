# Logo PowerGuard
Write-Host @"
------------------
|   PowerGuard   |
------------------
"@ -ForegroundColor Cyan

# Función para bloquear todas las conexiones entrantes y salientes
function Block-AllConnections {
    Write-Host "Bloqueando todas las conexiones entrantes y salientes..."
    netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound
}

# Función para permitir una conexión entrante en un puerto específico
function Allow-InboundConnection {
    param (
        [string]$Name,
        [int]$Port
    )
    Write-Host "Permitiendo conexión entrante en el puerto $Port..."
    netsh advfirewall firewall add rule name="$Name" dir=in action=allow protocol=TCP localport=$Port
}

# Función para permitir una conexión saliente a una dirección remota en un puerto específico
function Allow-OutboundConnection {
    param (
        [string]$Name,
        [string]$RemoteAddress,
        [int]$Port
    )
    Write-Host "Permitiendo conexión saliente a $RemoteAddress en el puerto $Port..."
    netsh advfirewall firewall add rule name="$Name" dir=out action=allow protocol=TCP remoteport=$Port remoteaddress="$RemoteAddress"
}

# Función para abrir un puerto
function Open-Port {
    param (
        [int]$Port
    )
    Write-Host "Abriendo puerto TCP $Port..."
    netsh advfirewall firewall add rule name="Port_$Port" dir=in action=allow protocol=TCP localport=$Port
}

# Función para cerrar un puerto
function Close-Port {
    param (
        [int]$Port
    )
    Write-Host "Cerrando puerto TCP $Port..."
    netsh advfirewall firewall delete rule name="Port_$Port"
}

# Función para mostrar las reglas del firewall
function Show-FirewallRules {
    Write-Host "Reglas del Firewall:"
    netsh advfirewall firewall show rule name=all
}

# Función para generar un informe detallado
function Generate-Report {
    Write-Host "Generando informe detallado..."

    # Obtener estadísticas del sistema
    $cpuUsage = Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select-Object -ExpandProperty Average
    $memoryUsage = Get-WmiObject Win32_OperatingSystem | ForEach-Object { "{0:N2}" -f (($_.TotalVisibleMemorySize - $_.FreePhysicalMemory)*100 / $_.TotalVisibleMemorySize) }
    $diskUsage = Get-WmiObject Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 } | ForEach-Object { "{0} - {1:N2} GB libre de {2:N2} GB" -f $_.DeviceID, ($_.FreeSpace / 1GB), ($_.Size / 1GB) }

    # Obtener las conexiones activas
    $connections = Get-NetTCPConnection | Select-Object -Property LocalAddress,LocalPort,RemoteAddress,RemotePort,State

    # Mostrar el tráfico de red tipo Wireshark o TCPDump
    Write-Host "Tráfico de red:"
    netstat -an | Select-String -Pattern 'LISTENING|ESTABLISHED|TIME_WAIT'

    # Mostrar las conexiones activas
    Write-Host "Conexiones activas:"
    $connections

    # Mostrar las reglas del firewall
    Show-FirewallRules

    # Mostrar estadísticas del sistema
    Write-Host "Estadísticas del sistema:"
    Write-Host "Uso de CPU: $cpuUsage%"
    Write-Host "Uso de memoria: $memoryUsage%"
    Write-Host "Uso de disco:"
    $diskUsage
}

# Menú principal
Write-Host "Bienvenido al Firewall PowerShell"
do {
    Write-Host ""
    Write-Host "Menú de opciones:"
    Write-Host "1. Bloquear todas las conexiones"
    Write-Host "2. Permitir conexión entrante"
    Write-Host "3. Permitir conexión saliente"
    Write-Host "4. Abrir puerto"
    Write-Host "5. Cerrar puerto"
    Write-Host "6. Mostrar reglas del firewall"
    Write-Host "7. Generar informe detallado"
    Write-Host "8. Salir"
    $choice = Read-Host "Por favor, seleccione una opción"

    switch ($choice) {
        1 { Block-AllConnections }
        2 {
            $name = Read-Host "Nombre de la regla"
            $port = Read-Host "Puerto"
            Allow-InboundConnection $name $port
        }
        3 {
            $name = Read-Host "Nombre de la regla"
            $remoteAddress = Read-Host "Dirección remota"
            $port = Read-Host "Puerto"
            Allow-OutboundConnection $name $remoteAddress $port
        }
        4 {
            $port = Read-Host "Puerto a abrir"
            Open-Port $port
            Write-Host "Puerto $port abierto"
        }
        5 {
            $port = Read-Host "Puerto a cerrar"
            Close-Port $port
            Write-Host "Puerto $port cerrado"
        }
        6 { Show-FirewallRules }
        7 { Generate-Report }
        8 { Write-Host "Saliendo..."; break }
        default { Write-Host "Opción inválida" }
    }
} while ($choice -ne 8)
