require_relative 'clases'

def get_clientes(nombre_sucursal,data)
  data.sucursales.each do |sucursal|
    if sucursal.nombre == nombre_sucursal
      cont = 0
      sucursal.clientes.each do |cliente|
        cont += 1
        puts  "Cliente #{cont}: #{cliente.nombre} #{cliente.apellido} DNI: #{cliente.dni}"
      end
    end
  end
end


def get_cuenta_cliente(dni_cliente,data)
  data.sucursales.each do |sucursal|
      sucursal.clientes.each do |cliente|
        if cliente.dni == dni_cliente
          puts  "Cuenta cliente: #{cliente.nombre} #{cliente.apellido} DNI: #{cliente.dni}"
          cont = 0
          cliente.comprobantes.each do |comprobante|
            cont += 1
            puts "Comprobante #{cont}: #{comprobante.descripcion} por $#{comprobante.importe}, tipo: #{comprobante.tipo.descripcion}"
          end
        end
      end
  end
end

def get_all_clientes(data)
  data.sucursales.each do |sucursal|
    puts "Sucursal #{sucursal.nombre}:"
    cont = 0
      sucursal.clientes.each do |cliente|
        cont += 1
        puts  "Cliente #{cont}: #{cliente.nombre} #{cliente.apellido} DNI: #{cliente.dni}"
      end
  end
end

def delete_cliente(dni_cliente,data)
  data.sucursales.each do |sucursal|
      sucursal.clientes.each do |cliente|
        if cliente.dni == dni_cliente
          sucursal.delete_cliente(cliente.id)
        end
      end
  end
end

def get_all_comprobantes(data)
  data.sucursales.each do |sucursal|
    puts "*Sucursal #{sucursal.nombre}:"
    cont = 0
      sucursal.clientes.each do |cliente|
        cont += 1
        puts  "-Cliente #{cont}: #{cliente.nombre} #{cliente.apellido} DNI: #{cliente.dni}"
        cliente.comprobantes.each do |comprobante|
          puts "--Comprobante #{cont}: #{comprobante.descripcion} por $#{comprobante.importe}, tipo: #{comprobante.tipo.descripcion}"
        end
      end
  end
end
