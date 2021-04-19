import artistas.*
import excepcion.*
import instancias.*

class Requerimiento {
	
	method cumple(artista) 
	method cambiarRequerimiento(requerimiento)
}


object habilidadCanto inherits Requerimiento{
	
	var habilidadMinima = 70
	
	override method cumple(artista){
		if (artista.habilidadDeCanto() < habilidadMinima) {
			throw new HabilidadMinimaMusicoException(message="El artista no cumple con el requisito de habilidad minima "+ habilidadMinima + " para participar en la presentacion.")
		}
	}
	
	override method cambiarRequerimiento(nuevaHabilidad){
		habilidadMinima = nuevaHabilidad
	}
}

object cantidadDiscos inherits Requerimiento{
	
	var cantidadDiscos = 1
	
	override method cumple(artista){
		if (artista.cantidadDeDiscosPublicados() < cantidadDiscos) {
			throw new MusicoSinDiscosException(message="El artista no tiene suficientes discos para participar en la presentacion.")
		}
	}
	
	override method cambiarRequerimiento(nuevaCantidad){
		cantidadDiscos = nuevaCantidad
	}
}

object cancionQueSabeCantar inherits Requerimiento{
	
	var cancionRequerida = aliciaEnElPais
	
	override method cumple(artista){
		
		if (!artista.interpretaBien(cancionRequerida)) {
			throw new MusicoNoEjecutaCancionException(message="El artista no interpreta bien la cancion " + cancionRequerida)
		}
		
	}
	override method cambiarRequerimiento(nuevaCancion){
		cancionRequerida = nuevaCancion
	}
}

