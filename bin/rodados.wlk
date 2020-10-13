import wollok.game.*

class ChevroletCorsa {
	const property capacidad = 4
	const property velocidadMaxima = 150
	const property color
	const property peso = 1300
	var property recorridos = []
	var property position = new Position(x=4, y=7)
	var property image = "autitorojo.png"	

	method pasoPor(posicion) { return recorridos.any( {recorrido => recorrido == posicion} )}
	method pasoPorFila(numero) { return recorridos.any( {recorrido => recorrido.x == numero} ) }
}


class RenaultKwid {
	const property color = 'azul'
	var property tanqueAdicional
		
	method capacidad() {return if (tanqueAdicional) {3} else {4} }
	method velocidadMaxima() {return if (tanqueAdicional) {120} else {110} }
	method peso() { return 1200 + (if (tanqueAdicional) {150} else {0}) }
}

class AutosEspeciales {
	const property capacidad
	const property velocidadMaxima
	const property color
	const property peso
}

object traffic {
	const property color = 'blanco'
	var property interior
	var property motor
	
	method capacidad() { return if (interior == 'comodo') {5} else {12} }
	method velocidadMaxima() { return if (motor == 'pulenta') {130} else {80} }
	method peso() { return 4000 +  (if (motor == 'pulenta') {800} else {500}) + (if (interior == 'comodo') {700} else {1000} ) }
}

