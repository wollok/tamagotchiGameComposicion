
object joystick {
	method imagen() = "juego.png"
	method posicion() = game.at(0,0)
	
	method hazTuGracia(mascota) {
		mascota.juga()
		game.say(mascota, "Wiiii")
	}
}

object plato {
	method imagen() = "comida.png"
	method posicion() = game.at(3,0)
	
	method hazTuGracia(mascota) {
		mascota.come()
		game.say(mascota, "Ñamm")		
	}
}

object flecha {
	var accionSelecciada = joystick
	
	method imagen() = "flechita-hacia-abajo.png"
	
	method seleccionar(accion) {
		accionSelecciada = accion
	}
	
	method posicion() {
		const posicion = accionSelecciada
						.posicion()
						.clone()
		posicion.moveUp(1)
		return posicion
	}
	
	method hazTuGracia(mascota) {
		accionSelecciada.hazTuGracia(mascota)
	}
}