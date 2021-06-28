class Comprobante
  attr_reader : :id, :nombre, :fecha, :descripcion, :importe, :tipo, :Cliente
  @@number_id = 0

  def initialize(nombre,descripcion,importe,tipo = "factura")
    @@number_id += 1 #incremento el number_id para obtener el id incremental
    @id = number_id
    @nombre = nombre
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
    @Clientes = Array.new
  end

  def agregar_cliente(nuevo_cliente)
    @Clientes.push(nuevo_cliente)
  end

  def borrar_cliente(id)
    Clientes.each do |cliente|
      if cliente.id = id
        Clientes.delete(cliente)
      end
  end

end

class Controladora
  attr_accessor :clientes, :empresas, :comprobantes

  def initialize
    @Clientes = Array.new
    @Empresas = Array.new
    @Comprobantes = Array.new
  end

end
