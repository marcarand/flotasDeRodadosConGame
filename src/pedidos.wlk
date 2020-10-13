class Pedido {
	const property distancia
	var property tiempoMaximo
	const property cantidadPasajeros
	const property coloresIncompatibles = []

	method velocidadRequerida() { return distancia/tiempoMaximo }
	method puedeSatisfacerPedido(rodado) { 
		return (rodado.velocidadMaxima() >= (10 + self.velocidadRequerida())) and (rodado.capacidad() >= cantidadPasajeros) and not (coloresIncompatibles.any( {color => color == rodado.color()} ))
	}
	method acelerar() { tiempoMaximo -= 1 }
	method relajar() { tiempoMaximo += 1 }
}
