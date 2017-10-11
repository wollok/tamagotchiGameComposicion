import estados.*

class Mascota {
	var nivelDeFelicidad = 0
	var estado = new Contento()
	
	method come() { estado.hacerQueComa(self) }
	
	method juga() { estado.hacerQueJuegue(self) }
	
	method jugaCon(otraMascota) { estado.hacerQueJuegueCon(self, otraMascota) }
	
	method poneteContento() { estado = new Contento() }
	method poneteHambriento() { estado = new Hambriento() }
	method poneteTriste() { estado = new Triste() }
	
	method aumentarFelicidad(cant) { nivelDeFelicidad += cant }
	method bajarFelicidad(cant) { nivelDeFelicidad -= cant }
	
	method felicidad() = nivelDeFelicidad
	method estado() = estado
	
	//Wollok-Game
	method imagen() = "tamagotchi-" + estado.nombre() + ".png"
}


