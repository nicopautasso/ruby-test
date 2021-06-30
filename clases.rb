class Comprobante
  attr_reader :id, :fecha, :descripcion, :importe, :tipo
  @@number_id = 0

  def initialize(descripcion,importe,tipo)
    @@number_id += 1 #incremento el number_id para obtener el id incremental
    @id = @@number_id
    @descripcion = descripcion
    @importe = importe
    @fecha = Time.now
    @tipo = tipo
  end

  def set_importe=(importe)
    @importe = importe;
  end

end

class Cliente
  attr_accessor :id, :nombre, :apellido, :dni, :comprobantes
  @@number_id = 0

  def initialize(nombre,apellido,dni)
    @@number_id += 1
    @id = @@number_id
    @nombre = nombre
    @apellido = apellido
    @dni = dni
    @comprobantes = Array.new
  end

  def datos_completos
    return @nombre,@apellido,@dni
  end

  def add_comprobante(nuevo_comprobante)
    @comprobantes.push(nuevo_comprobante)
  end

end

class Sucursal
  attr_accessor :id, :nombre, :razon_social, :clientes
  @@number_id = 0

  def initialize(nombre,razon_social = "no declara")
    @@number_id += 1
    @id = @@number_id
    @nombre = nombre
    @razon_social = razon_social
    @clientes = Array.new
  end

  def add_cliente(nuevo_cliente)
    @clientes.push(nuevo_cliente)
  end

  def borrar_cliente(id)
    @clientes.each do |cliente|
      if cliente.id = id
        @clientes.delete(cliente)
      end
    end
  end
end

class Tipo_comprobante
  attr_accessor :id, :descripcion
  @@number_id = 0

  def initialize(descripcion)
    @@number_id += 1
    @id = @@number_id
    @descripcion = descripcion
  end
end

class Controladora
  attr_reader :sucursales

  def initialize
    @sucursales = Array.new
  end

  def add_sucursal(sucursal)
    @sucursales.push(sucursal)
  end
end
