require_relative 'clases' #relative porque estan en el mismo directorio
require_relative 'metodos'
require_relative 'data'

cargar_data

def main
  puts "MENU PRINCIPAL OPTICA DEL SOL"
  puts "Indique que desea hacer:"
  puts "1 - Ver clientes de sucursal"
  puts "2 - Ver cuenta por cliente"
  puts "3 - Borrar cliente"
  puts "4 - Ver todos los comprobantes"
  puts "0 - Salir del sistema"

  numero = gets.to_i
    case numero
    when 1
      puts "CLIENTES DE LA SUCURSAL"
      print "Indique el nombre de la sucursal: "
      sucursal_aux = gets.chomp
      get_clientes(sucursal_aux)
    when 2
      puts "CUENTA POR CLIENTE"
      print "Indique el dni del cliente: "
      dni_aux = gets
      dni_aux = dni_aux.to_i
      get_cuenta_cliente(dni_aux)
    when 3
      puts "BORRAR CLIENTE"
      print "Indique el dni del cliente a borrar: "
      dni_aux = gets
      dni_aux = dni_aux.to_i
      delete_cliente(dni_aux)
    when 4
      puts "COMPROBANTES DEL SISTEMA"
      get_all_comprobantes
    when 0
      puts "Gracias por utilizar el sistema!"
    else
      puts "Codigo incorrecto"
    end
end

main
