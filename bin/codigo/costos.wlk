import presentaciones.*
import artistas.*


/*
 * TIPO DE COSTO
 * 
 * */
class Costo{
	method cobroDePresentacion(musico, presentacion)
} 
 
object costoVocalista inherits Costo{

	override method cobroDePresentacion(musico, presentacion) {
		if (presentacion.capacidad() > 5000) {
			return 500
		} else {
			return 400
		}
	}

}

object costoMusicoGrupal inherits Costo{

	override method cobroDePresentacion(musico, presentacion) {
		if (presentacion.filtrarPorOtrosArtistas(musico).isEmpty()) {
			return musico.costoBase()
		} else {
			return 50
		}
	}

}

object costoPorTocarSolo inherits Costo{

	override method cobroDePresentacion(musico, presentacion) {
		if (presentacion.filtrarPorOtrosArtistas(self).isEmpty()) {
			return musico.costoBase()
		} else {
			return musico.costoBase() / 2
		}
	}

}

object costoSegunCapacidad inherits Costo{

	override method cobroDePresentacion(musico, presentacion) {
		if(presentacion.capacidad() > musico.personasMinimas()){
			return musico.costoBase()
		} else {
			return musico.costoBase() - 100
		}
	}

}

object costoExpectativaInlfacionaria inherits Costo{
	
	override method cobroDePresentacion(musico, presentacion) {
		if(musico.fechaSinAdicional() <= presentacion.fecha()){
			return musico.costoBase()
		} else {
			return (musico.costoBase() + (musico.costoBase() * musico.porcentajeAdicional() / 100))
		}
	}
}
