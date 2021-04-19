/**
 * Instrumentos definidos en la primer entrega:
 * 
 * fender 10 puntos
 * gibson 15 puntos o 5 puntos
 * 
 */
class Instrumento {

	const puntos
	var property estado = sana

	method puntos() {
		return self.estado().puntos(self)
	}

	method valorBase() {
		return puntos
	}

}

class Estado{

	method puntos(instrumento)
}

object sana inherits Estado{

	override method puntos(instrumento) = instrumento.valorBase()

}

object gastada inherits Estado{

	override method puntos(instrumento) = 5

}
