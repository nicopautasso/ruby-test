empresa1 = Empresa.new(Vitolen)
empresa2 = Empresa.new(OpticaBrera)

cliente1 = Cliente.new("Nicolas","Pautasso",39031628)
cliente2 = Cliente.new("Juan","Perez",23090909)
cliente3 = Cliente.new("Jose","Hernandez",15878787)

empresa1.agregar_cliente(cliente1)
empresa1.agregar_cliente(cliente2)
empresa2.agregar_cliente(cliente3)

factura = Tipo_comprobante.new("factura")
nota_debito = Tipo_comprobante.new("nota_debito")
nota_credito = Tipo_comprobante.new("nota_credito")

factura1 = Comprobante.new("2 lentes",1000,factura,cliente1)
factura2 = Comprobante.new("1 lente",6000,factura,cliente1)
factura3 = Comprobante.new("1 liquido",250,factura,cliente2)
factura4 = Comprobante.new("4 lentes",5000,factura,cliente3)
factura5 = Comprobante.new("devolucion lentes",3000,nota_credito,cliente1)
factura6 = Comprobante.new("devolucion liquido",250,nota_credito,cliente3)
factura7 = Comprobante.new("recargo reparacion",1000,nota_debito,cliente1)
factura8 = Comprobante.new("recargo envio a domicilio",250,nota_debito,cliente2)
