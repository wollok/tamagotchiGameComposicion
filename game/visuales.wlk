import models.mascota.*

object comida {
	method image() = "comida.png"
	
	method interactua(mascota) { mascota.come() }
}

object juego {
	method image() = "juego.png"
	
	method interactua(mascota) { mascota.juga() }
}

object companiera inherits Mascota {
	method interactua(mascota) { mascota.jugaCon(self) }
	
	override method image() = "companiera-" + super()
}

object pozo {
	method image() = "pozo.jpg"
	
	method interactua(mascota) { mascota.poneteTriste() }
}