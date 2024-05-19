import models.mascota.*
import wollok.game.*

object comida {
	method position() = game.at(1, 1)
	method image() = "comida.png"
	
	method interactua(mascota) { mascota.come() }
}

object juego {
	method image() = "juego.png"
	method position() = game.at(1, 6)
	
	method interactua(mascota) { mascota.juga() }
}

object companiera inherits Mascota {
	method interactua(mascota) { mascota.jugaCon(self) }
	override method position() = game.at(6, 1)
	
	override method image() = "companiera-" + super()
}

object pozo {
	method image() = "pozo.jpg"
	method position() = game.at(6, 6)

	method interactua(mascota) { mascota.poneteTriste() }
}