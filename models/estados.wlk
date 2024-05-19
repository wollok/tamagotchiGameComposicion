
class Contento {
	var property nombre = "contento"
	var cantVecesQueJugo = 0
	
	method hacerQueComa(mascota) { 
		mascota.aumentarFelicidad(1)
	}
	
	method hacerQueJuegue(mascota) {
		cantVecesQueJugo+=1 
		mascota.aumentarFelicidad(2)
		if (cantVecesQueJugo > 2) mascota.poneteHambriento()
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		cantVecesQueJugo+=1 
		companiero.juga()
		mascota.aumentarFelicidad(4)
	}
}

class Hambriento {
	var property nombre = "hambriento"
	 
	method hacerQueComa(mascota) { 
		mascota.poneteContento()
	}
	
	method hacerQueJuegue(mascota) {
		mascota.bajarFelicidad(4)
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		// No le pinta jugar con nadie
		mascota
	}
}

class Triste {
	const fechaInicio = new Date()
	var property nombre = "triste"
	
	method hacerQueComa(mascota) { 
		if (self.haceMuchoQueEstaTriste())
			mascota.poneteContento()
		else
			throw new Exception(message = "No quiero comer, estoy triste!")
	}
	
	method hacerQueJuegue(mascota) {
		mascota.poneteContento()
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		mascota.poneteContento()
		companiero.poneteContento()
	}	
	
	method haceMuchoQueEstaTriste() = (fechaInicio - new Date()) > 1
}