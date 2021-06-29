require_relative 'clases' #relative porque estan en el mismo directorio
require_relative 'metodos'
require_relative 'data'

cargar_data

def main
  puts "MENU PRINCIPAL"
  puts "Indique que desea hacer:"
  puts "1 - Ver clientes de empresa"
  puts "2 - Ver cuenta de cliente"
  puts "3 - Ver todos los comprobantes del sistema"
  puts "0 - Salir del sistema"

  numero = gets.to_i
    case numero
    when 1
      puts "CLIENTES DE LA EMPRESA"
      print "Indique el nombre de la empresa:"
      empresa_aux = gets.chomp
      get_clientes(empresa_aux)
    when 2
      puts "CUENTA DE CLIENTE"
      print "Indique el dni del empleado:"
      dni_aux = gets
      dni_aux = dni_aux.to_i
      get_cuenta_cliente(dni_aux)
    when 3
      puts "COMPROBANTES DEL SISTEMA"
      get_all_comprobantes
    else
      puts "Codigo incorrecto"
    end
end

main
