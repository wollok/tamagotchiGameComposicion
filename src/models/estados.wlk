class Estado {
	const nombre
	constructor (_nombre) { nombre = _nombre }
	
	method estaContento() = nombre == "contento"
	method estaHambriento() = nombre == "hambriento"
	method estaTriste() = nombre == "triste"
	
	method nombre() = nombre
}

class Contento inherits Estado {
	var cantVecesQueJugo = 0
	
	constructor () = super("contento")
	
	method hacerQueComa(mascota) { 
		mascota.aumentarFelicidad(1)
	}
	
	method hacerQueJuegue(mascota) {
		cantVecesQueJugo++ 
		mascota.aumentarFelicidad(2)
		if (cantVecesQueJugo > 2) mascota.poneteHambriento()
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		cantVecesQueJugo++ 
		companiero.juga()
		mascota.aumentarFelicidad(4)
	}
	
	method imagen() = "tamagotchi-contento.png"
}

class Hambriento inherits Estado {
	
	constructor () = super("hambriento")
	 
	method hacerQueComa(mascota) { 
		mascota.poneteContento()
	}
	
	method hacerQueJuegue(mascota) {
		mascota.bajarFelicidad(4)
	}
	
	method hacerQueJuegueCon(mascota, companiero) {
		//No le pinta jugar con nadie
	}
	
	
	method imagen() = "tamagotchi-hambriento.png"
}

class Triste inherits Estado {
	const fechaInicio = new Date()
	
	constructor () = super("triste")
	
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
	
	method imagen() = "tamagotchi-triste.png"
}