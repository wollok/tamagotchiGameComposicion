class Estado {
	
	method estaContento() = self.nombre() == "contento"
	method estaHambriento() = self.nombre()== "hambriento"
	method estaTriste() = self.nombre()== "triste"
	
	method nombre()
}

class Contento inherits Estado {
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

class Hambriento inherits Estado {
	var property nombre = "hambriento"
	 
	method hacerQueComa(mascota) { 
		mascota.poneteContento()
	}
	
	method hacerQueJuegue(mascota) {
		mascota.bajarFelicidad(4)
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		//No le pinta jugar con nadie
	}
}

class Triste inherits Estado {
	const fechaInicio = new Date()
	var property nombre = "triste"
	
	method hacerQueComa(mascota) { 
		if (self.haceMuchoQueEstaTriste())
			mascota.poneteContento()
		else
			throw new Exception("No quiero comer, estoy triste!")
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