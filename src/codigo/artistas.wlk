import canciones.*
import presentaciones.*
import instrumentos.*
import instancias.*

class Musico {

	var property tipoMusico
	var property tipoCobro
	var property costoBase
	var property personasMinimas
	var property fechaSinAdicional
	var property porcentajeAdicional
	const albumesPublicados = []

	method estaEnAlgunAlbum(cancion) = albumesPublicados.any{ album => album.listaDeCanciones().contains(cancion) }

	method agregarDiscoEditado(disco) {
		albumesPublicados.add(disco)
	}

	method quitarDiscosQueEdito(disco) {
		albumesPublicados.remove(disco)
	}

	method interpretaBien(cancion) = tipoMusico.interpretaBien(self, cancion)

	method cancionMasLarga(criterio) = albumesPublicados.map{ disco => disco.cancionMasLarga(criterio) }.first()

	method esMinimalista() = albumesPublicados.all({ album => album.esAlbumMinimalista() })

	method duracionDeObra() = albumesPublicados.sum{ album => album.minutosDeDisco() }

	method laPego() = albumesPublicados.all({ album => album.buenaVenta() })

	method tieneCancionesCon(palabra) = albumesPublicados.map{ disco => disco.cancionesCon(palabra) }.flatten()

	method cobroDePresentacion(presentacion) = tipoCobro.cobroDePresentacion(self, presentacion)

	method habilidadDeCanto() = tipoMusico.habilidadDeCanto(self)

	method tocaEn(estilo) {
		tipoMusico.tocaEn(estilo)
	}

	method tocaEn() = tipoMusico.tocaEn()

	method cantidadDeDiscosPublicados() = albumesPublicados.size()

}

/**
 *  Joaquín
 * 	pertenece al grupo “Pimpinela”
 * 	su habilidad es 20 pero le suma 5 puntos si canta/toca en grupo
 * 	interpreta bien las canciones que duran más de 300 segundos
 * 	cobra 100 pesos por presentación si toca él solo, o 50 en caso contrario
 **/
class TipoMusico {

	var property tocaEn
	const habilidadCanto

	method habilidadDeCanto(musico)

	method cobroDePresentacion(musico, presentacion) = musico.tipoCobro().costo(presentacion)

	method interpretaBien(musico, cancion) {
		return (self.habilidadDeCanto(musico) > 60 || musico.estaEnAlgunAlbum(cancion))
	}

}

class VocalistaPopular inherits TipoMusico {

	const palabraClave

	override method habilidadDeCanto(musico) = habilidadCanto + self.puntosGrupo()

	override method interpretaBien(musico, cancion) {
		return (super(musico, cancion) || cancion.tienePalabra(palabraClave))
	}

	method puntosGrupo() {
		if (self.tocaEn().tipo() == solista.tipo()) {
			return 0
		} else {
			return -20
		}
	}

}

class MusicoGrupal inherits TipoMusico {

	const plusGrupo

	override method habilidadDeCanto(musico) = habilidadCanto + self.puntosGrupo()

	override method interpretaBien(musico, cancion) {
		return (super(musico, cancion) || cancion.duracion() > 300)
	}

	method puntosGrupo() {
		if (self.tocaEn().tipo() == solista.tipo()) {
			return 0
		} else {
			return plusGrupo
		}
	}

}

class Palabreros inherits TipoMusico {

	const palabraClave

	override method habilidadDeCanto(musico) = habilidadCanto

	override method interpretaBien(musico, cancion) = (super(musico, cancion) || cancion.tienePalabra(palabraClave))

}

class Largueros inherits TipoMusico {

	var property segundosMinimosCancion

	override method habilidadDeCanto(musico) = habilidadCanto

	override method interpretaBien(musico, cancion) = (super(musico, cancion) || cancion.duracion() > segundosMinimosCancion)

}

class Impareros inherits TipoMusico {

	override method habilidadDeCanto(musico) = habilidadCanto

	override method interpretaBien(musico, cancion) = (super(musico, cancion) || cancion.duracion().odd())

}

/**
 * Luis Alberto
 * 	tiene una guitarra Fender que vale 10 UG, pero a veces toca con una Gibson que vale 15 si está sana 
 * 	o 5 si la rompieron (por supuesto, eso depende de cómo la traten, pero sale de fábrica sanita).
 * 	su habilidad es de 8 * el valor de la guitarra hasta un máximo de 100
 * 	interpreta bien todas las canciones
 * 	cobra 1.000 pesos por presentación hasta Noviembre del 2020, después cobra $ 1.200
 */
object luisAlberto inherits Musico {

	var property grupo = solista
	var property instrumento

	override method interpretaBien(cancion) {
		return true
	}

	override method habilidadDeCanto() = 100.min(8 * instrumento.puntos())

	override method cobroDePresentacion(presentacion) {
		const fechaTope = new Date(day = 30, month = 11, year = 2020)
		if (presentacion.fecha() <= fechaTope) {
			return 1000
		} else {
			return 1200
		}
	}

}

/**
 * Grupos
 */
object grupo {

	const property tipo = self

}

object solista {

	const property tipo = self

}

