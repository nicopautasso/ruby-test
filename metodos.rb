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

end

def delete_cliente
end

def get_all_comprobantes
end
