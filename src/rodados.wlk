import wollok.game.*

class ChevroletCorsa {
	const property capacidad = 4
	const property velocidadMaxima = 150
	const property color
	const property peso = 1300

	var property recorridos = []
	var property position
	var property image = "autitorojo.png"	

	method moverArriba(){ 
		recorridos.add(self.position())
		self.position(self.position().up(1))
	}
	method moverAbajo(){
		recorridos.add(self.position())
		self.position(self.position().down(1))
	}
	method moverDerecha(){
		recorridos.add(self.position())
		self.position(self.position().right(1))
	}
	method moverIzquierda(){
		recorridos.add(self.position())
		self.position(self.position().left(1))
	}
	
	method pasoPor(posicion) { return recorridos.any( {recorrido => recorrido == posicion} ) }
	method pasoPorFila(numero) { return recorridos.any( {recorrido => recorrido.position().x() == numero} ) }
	method recorrioFilas(lista_de_numeros) { return lista_de_numeros.all( {numero => self.pasoPorFila(numero)} )}
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

