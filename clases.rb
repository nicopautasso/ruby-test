class Comprobante
  attr_reader : :id, :fecha, :descripcion, :importe, :tipo, :cliente
  @@number_id = 0

  def initialize(descripcion,importe,tipo,cliente)
    @@number_id += 1 #incremento el number_id para obtener el id incremental
    @id = number_id
    @descripcion = descripcion
    @importe = importe
    @fecha = Time.now
    @tipo = tipo
    @cliente = cliente
  end

  def set_importe=(importe)
    @importe = importe;
  end

end

class Cliente
  attr_accessor :id, :nombre, :apellido, :dni
  @@number_id = 0

  def initialize(nombre,apellido,dni)
    @@number_id += 1
    @id = @@number_id
    @nombre = nombre
    @apellido = apellido
    @dni = dni
  end

  def datos_completos
    return @nombre,@apellido,@dni
  end

end

class Empresa
  attr_reader :id, :nombre, :razon_social, :Clientes
  @@number_id = 0

  def initialize(nombre,razon_social = "S.A.")
    @@number_id += 1
    @id = number_id
    @nombre = nombre
    @razon_social = razon_social
    @clientes = Array.new
  end

  def agregar_cliente(nuevo_cliente)
    @clientes.push(nuevo_cliente)
  end

  def borrar_cliente(id)
    @clientes.each do |cliente|
      if cliente.id = id
        @clientes.delete(cliente)
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
