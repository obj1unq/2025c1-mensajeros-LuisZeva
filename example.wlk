/** First Wollok example */
object paquete {
	var estadoDePago = false 
	
	method determinarPago(_estadoDePago) {
		estadoDePago = _estadoDePago	
	}
	method estadoDePago() {
		return estadoDePago
	}
}

object neo {
	const peso 		   = 0
	var   puedeLlamar = false

	method peso(){
		return peso
	}

	method puedeLlamar() {
		return puedeLlamar 
	}

	method tieneSaldo(_tieneSaldo) {
		puedeLlamar = _tieneSaldo
	}
}

object chuckNorris {
	const peso 		   = 900
	const puedeLlamar = true
	
	method peso() {
		return peso
	}
	
	method puedeLlamar() {
		return puedeLlamar 
	}
}

object lincolnHawk {
	var   pesoLincoln 	  = 0
	var   pesoTransporte  = 0
	const puedeLlamar     = false
	
	method  peso() {
		return pesoLincoln + pesoTransporte
	}

	method usarBicicleta() {
		pesoTransporte = 10
	}
    
	method usarCamion(_acoplados) {
		pesoTransporte = 500 + (500 * _acoplados)
	}

	method puedeLlamar() {
		return puedeLlamar
	}

	method establecerPesoDeLincoln(establecerPesoDeLincoln) {
		pesoLincoln = establecerPesoDeLincoln
	}
}

object puenteDeBrooklyn {


	method cumpleRequisito(_mensajero) {
		return (_mensajero.peso() <= 1000)
	}
}

object matrix {

	method cumpleRequisito(_mensajero) {
		return _mensajero.puedeLlamar()
	}
}

object empresa {

	method determinarSiSePuedeEntregar(_paquete, _mensajero, _destino) {
		return ( _paquete.estadoDePago() && _destino.cumpleRequisito(_mensajero) )
	}
}