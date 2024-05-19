import estados.*
import wollok.game.*

class Mascota {
	var nivelDeFelicidad = 0
	var estado = new Contento()
	var property position = game.center()
	
	method come() { estado.hacerQueComa(self) }
	
	method juga() { estado.hacerQueJuegue(self) }
	
	method jugaCon(otraMascota) { estado.hacerQueJuegueCon(self, otraMascota) }
	
	method poneteContento() { estado = new Contento() }
	method poneteHambriento() { estado = new Hambriento() }
	method poneteTriste() { estado = new Triste() }
	
	method aumentarFelicidad(cant) { nivelDeFelicidad += cant }
	method bajarFelicidad(cant) { nivelDeFelicidad -= cant }
	
	method felicidad() = nivelDeFelicidad
	
	//Testing
	method estaContento() = estado.nombre() == "contento"
	method estaHambriento() = estado.nombre() == "hambriento"
	method estaTriste() = estado.nombre() == "triste"
	
	//Wollok-Game
	method image() = "tamagotchi-" + estado.nombre() + ".png"
}


