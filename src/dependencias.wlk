class Dependencia {
	var property flotaDeRodados = []
	var property empleados
	var property registroDePedidos = []
		
	method agregarAFlota(rodado) { flotaDeRodados.add(rodado) }
	method quitarDeFlota(rodado) { flotaDeRodados.remove(rodado) }
	method pesoTotalFlota() { return flotaDeRodados.sum( { rodado => rodado.peso()} ) }
	method estaBienEquipada() { return (flotaDeRodados.size()>=3) and (flotaDeRodados.all { rodado => rodado.velocidadMaxima() >= 100 }) }
	method capacidadTotalEnColor(color) { return flotaDeRodados.filter({rodado => rodado.color() == color}).sum( { rodado => rodado.capacidad()}) }
	method colorDelRodadoMasRapido() { return flotaDeRodados.max( {rodado => rodado.velocidadMaxima() } ).color() }
	method capacidadFaltante() { return empleados -  flotaDeRodados.sum({ rodado => rodado.capacidad()}) }
	method esGrande() { return empleados >= 40 and flotaDeRodados.size() >= 5 }
	method agregarPedido(pedido) { registroDePedidos.add(pedido)}
	method quitarPedido(pedido) { registroDePedidos.remove(pedido)}
	method totalPasajerosPedidos() { return registroDePedidos.sum( {registro => registro.cantidadPasajeros()}) }
	method cual_NoPuedeSatisfacer() { return registroDePedidos.all( {registro => self.flotaPuedeSatisfacer(registro)} ) }
	method flotaPuedeSatisfacer(pedido) { return flotaDeRodados.any({ rodado => pedido.puedeSatisfacerPedido(rodado)}) }
	method esIncompatibleConTodos(color) { return registroDePedidos.all( { registro => registro.any( { pedido => pedido.coloresIncompatibles() == color } ) } ) }
	method relajarTodosLosPedidos() { registroDePedidos.forEach( { pedido => pedido.relajar() } ) }
}

