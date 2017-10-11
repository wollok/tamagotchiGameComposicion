import models.mascota.*

mixin Ayuda {
	var primeraVez = true
	
	method estaCerca() { if(primeraVez) self.ayuda() }
	
	method ayuda() { 
		game.say(self, "Presiona ESPACIO para interactuar")
		primeraVez = false
	}
}

object comida mixed with Ayuda {
	method imagen() = "comida.png"
	
	method interactua(mascota) { mascota.come() }
}

object juego mixed with Ayuda {
	method imagen() = "juego.png"
	
	method interactua(mascota) { mascota.juga() }
}

object companiera inherits Mascota mixed with Ayuda {
	method interactua(mascota) { mascota.jugaCon(self) }
	
	override method imagen() = "companiera-" + super()
}

object pozo mixed with Ayuda {
	method imagen() = "pozo.jpg"
	
	method interactua(mascota) { mascota.poneteTriste() }
}