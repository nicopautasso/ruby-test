
require_relative 'clases'

def cargar_data
  sucursal1 = Sucursal.new("Parana")
  sucursal2 = Sucursal.new("Rafaela")

  cliente1 = Cliente.new("Nicolas","Pautasso",39031628)
  cliente2 = Cliente.new("Juan","Perez",123456789)
  cliente3 = Cliente.new("Jose","Hernandez",987654321)

  factura = Tipo_comprobante.new("factura")
  nota_debito = Tipo_comprobante.new("nota_debito")
  nota_credito = Tipo_comprobante.new("nota_credito")

  comprobante1 = Comprobante.new("2 lentes",1000,factura)
  comprobante2 = Comprobante.new("1 lente",6000,factura)
  comprobante3 = Comprobante.new("1 liquido",250,factura)
  comprobante4 = Comprobante.new("4 lentes",5000,factura)
  comprobante5 = Comprobante.new("devolucion lentes",3000,nota_credito)
  comprobante6 = Comprobante.new("devolucion liquido",250,nota_credito)
  comprobante7 = Comprobante.new("recargo reparacion",1000,nota_debito)
  comprobante8 = Comprobante.new("recargo envio a domicilio",250,nota_debito)

  cliente1.add_comprobante(comprobante1)
  cliente1.add_comprobante(comprobante2)
  cliente2.add_comprobante(comprobante3)
  cliente3.add_comprobante(comprobante4)
  cliente1.add_comprobante(comprobante5)
  cliente3.add_comprobante(comprobante6)
  cliente1.add_comprobante(comprobante7)
  cliente2.add_comprobante(comprobante8)

  sucursal1.add_cliente(cliente1)
  sucursal1.add_cliente(cliente2)
  sucursal2.add_cliente(cliente3)

  controladora = Controladora.new
  controladora.add_sucursal(sucursal1)
  controladora.add_sucursal(sucursal2)

  controladora
end
