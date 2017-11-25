import estados.*

class Mascota {
	var nivelDeFelicidad = 0
	var estado = new Contento()
	
	method come() { 
		estado.hacerQueComa(self)
		game.say(self, "Ñamm")
	}
	
	method juga() { 
		estado.hacerQueJuegue(self)
		game.say(self, "Wiii")
	}
	
	method jugaCon(otraMascota) { estado.hacerQueJuegueCon(self, otraMascota) }
	
	method poneteContento() { estado = new Contento() }
	method poneteHambriento() { estado = new Hambriento() }
	method poneteTriste() { estado = new Triste() }
	
	method aumentarFelicidad(cant) { nivelDeFelicidad += cant }
	method bajarFelicidad(cant) { nivelDeFelicidad -= cant }
	
	method felicidad() = nivelDeFelicidad
	
	//Testing
	method estaContento() = estado.estaContento()
	method estaHambriento() = estado.estaHambriento()
	method estaTriste() = estado.estaTriste()
	
	//Wollok-Game
	method imagen() = estado.imagen()
	method posicion() = game.center()
}


