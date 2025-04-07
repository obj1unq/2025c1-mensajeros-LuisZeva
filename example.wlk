/** First Wollok example */
object paquete {
	var estadoDePago = false 
	var mensajero = neo 
	var destino = matrix
	
	method estadoDePago(_estadoDePago) {
		estadoDePago = _estadoDePago	
	}
	method estadoDePago() {
		return estadoDePago
	}

	method mensajero(_mensajero) {
		 mensajero = _mensajero
	}

	method destino(_destino) {
		destino = _destino
	}

	method sePuedeEntregar(_mensajero, _destino) {
		return _destino.cumpleRequisito(_mensajero)
	  
	}
}

object neo {
	const peso = 0
	var   puedeLlamar = false

	method peso(){
		return peso
	}

	method puedeLlamar() {
		return puedeLlamar 
	}

	method puedeLlamar(_puedeLlamar) {
		puedeLlamar = _puedeLlamar
	}
}

object chuck {
	const peso = 900
	const puedeLlamar = true
	
	method peso() {
		return peso
	}
	
	method puedeLlamar() {
		return puedeLlamar 
	}
}

object lincoln {
	var pesoPropio = 0
	var transporte = bicicleta
	const puedeLlamar = false
	
	
	method  peso() {
		return pesoPropio + transporte.peso()
	}

	method transporte(_transporte) {
		transporte =_transporte
	}

	method transporte() {
		return transporte
	}

	method puedeLlamar() {
		return puedeLlamar
	}

	method pesoPropio(_pesoPropio) {
		pesoPropio = _pesoPropio
	}
}

object bicicleta {
	const peso = 10

	method peso() {
		return peso
	}
}

object camion {
	const pesoPropio = 500
	var cantAcoplados= 0


	method peso() {
		return pesoPropio + 500 * cantAcoplados
	}
	
	method cantAcoplados() {
		return cantAcoplados
	}

	method cantAcoplados(_cantAcoplados) {
		cantAcoplados = _cantAcoplados
	}

}

object brooklyn {


	method cumpleRequisito(mensajero) {
		return mensajero.peso() <= 1000
	}
}

object matrix {

	method cumpleRequisito(mensajero) {
		return mensajero.puedeLlamar()
	}
}
