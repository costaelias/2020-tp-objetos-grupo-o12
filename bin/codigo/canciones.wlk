/**
 * Conocemos estas canciones:
 * 	“Cisne”, que dura 312 segundos, que tiene como letra:
 * 		 “Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y
 * 		  puedo ver que solo estallan las hojas al brillar”
 * 	“La Familia”, que dura 264 segundos y tiene como letra:
 * 		 “Quiero brindar por mi gente sencilla, por el amor brindo por la familia“
 */


class Cancion {

	var property duracion = 0
	var property letra = ""
	var property titulo = ""

	method esCorta() = duracion < 180

	method tienePalabra(palabra) = letra.toLowerCase().contains(palabra)

	method cantidadaLetras() = letra.size()
	
	method cantidadaLetrasTitulo() = titulo.size()

}

class Remix inherits Cancion{
	
	const cancionOriginal
		
	override method duracion() = cancionOriginal.duracion()*3
	
	override method titulo() = cancionOriginal.titulo() + " Remix"
	
	override method letra() = "mueve tu cuelpo baby " + cancionOriginal.letra() + " yeah oh yeah"
	
}

class Mashups inherits Cancion{
	
	const canciones = []
	
	override method duracion() = self.listaDuraciones().max()
	
	override method titulo() = "Marshup " + canciones.map{ cancion => cancion.titulo() }.join(" ")
	
	override method letra() = canciones.map{ cancion => cancion.letra() }.join(" ")

	method listaDuraciones() = canciones.map{cancion=> cancion.duracion()}
	
}

class CriterioComparacion{
	method comparar(lista)
}

object porDuracion inherits CriterioComparacion{
	override method comparar(lista){
		return lista.max{cancion => cancion.duracion()}
	}
}
object porLetra inherits CriterioComparacion{
	override method comparar(lista){
		return lista.max{cancion => cancion.cantidadaLetras()}
	}
}
object porTitulo inherits CriterioComparacion{
	override method comparar(lista){
		return lista.max{cancion => cancion.cantidadaLetrasTitulo()}
	}
}

class Album {

	const property fechaDeLanzamiento
	const property listaDeCanciones = []
	const property cantidadDeUnidades
	const property unidadesVendidas

	method cancionMasLarga(criterio) = criterio.comparar(listaDeCanciones)

	method esAlbumMinimalista() = listaDeCanciones.all{ cancion => cancion.esCorta() }

	method buenaVenta() = (unidadesVendidas / cantidadDeUnidades) * 100 > 75

	method cancionesCon(fragmento) = listaDeCanciones.filter{ cancion => cancion.tienePalabra(fragmento) }

	method minutosDeDisco() = listaDeCanciones.sum{ cancion => cancion.duracion() }

}
