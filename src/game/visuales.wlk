import models.mascota.*

object comida {
	method imagen() = "comida.png"
	
	method interactua(mascota) { mascota.come() }
}

object juego {
	method imagen() = "juego.png"
	
	method interactua(mascota) { mascota.juga() }
}

object companiera inherits Mascota {
	method interactua(mascota) { mascota.jugaCon(self) }
	
	override method imagen() = "companiera-" + super()
}

object pozo {
	method imagen() = "pozo.jpg"
	
	method interactua(mascota) { mascota.poneteTriste() }
}