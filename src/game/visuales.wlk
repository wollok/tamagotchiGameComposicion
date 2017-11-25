import models.mascota.*

object joystick {
	method imagen() = "juego.png"
	method posicion() = game.at(1,0)
	
	method hazTuGracia(mascota) {
		mascota.juga()
	}
}


object plato {
	method imagen() = "comida.png"
	method posicion() = game.at(4,0)

	method hazTuGracia(mascota) {
		mascota.come()
	}
}

object companiera inherits Mascota {
	override method imagen() = "companiera-" + super()
	override method posicion() = game.at(7,0)

	method hazTuGracia(mascota) {
		mascota.jugaCon(self)
	}
}

object flechita {
	var seleccionado = joystick
	
	method seleccionado(actividad) {
		seleccionado = actividad
	}
	
	method imagen() = "flechita-hacia-abajo.png"
	
	method posicion() {
		const posicion = seleccionado.posicion().clone()
		posicion.moveUp(2)
		return posicion
	}
	
	method hazTuGracia(mascota) {
		seleccionado.hazTuGracia(mascota)
	}
}