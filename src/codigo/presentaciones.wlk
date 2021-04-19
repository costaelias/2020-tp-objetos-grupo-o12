class Presentacion {

	const property artistas = []
	var property fecha
	const property requerimientos =#{}
	const property ubicacion

	method filtrarPorOtrosArtistas(artista) {
		return artistas.filter{ otroArtista => otroArtista != artista }
	}
	
	method capacidad() = ubicacion.capacidad(self.fecha())
	
	method costoDePresentacion() {
		const costo = artistas.map({ artista => artista.cobroDePresentacion(self) })
		return costo.sum()
	}

	method sacarArtista(artista) {
		artistas.remove(artista)
	}

	method agregarRequerimientoParaArtista(requerimiento){
		
		requerimientos.add(requerimiento)
	}
	
	method quitarRequerimientoParaArtista(requerimiento){
		
		requerimientos.remove(requerimiento)
	}
	
	method sacarRequerimientosDePresentacion(){
		requerimientos.clear()
	}
	
	method agregarArtista(artista) {
		requerimientos.forEach{ requereimiento => requereimiento.cumple(artista) }
		artistas.add(artista)
		
	}

	method cambiarRequerimiento(requerimiento, nuevaCondicion){
		const nuevoReque = requerimiento
		nuevoReque.cambiarRequerimiento(nuevaCondicion)
		
		self.quitarRequerimientoParaArtista(requerimiento)
		self.agregarRequerimientoParaArtista(nuevoReque)
		
	}
	
	method tocaSolamente(artista){
		artistas.clear()
		artistas.add(artista)
	}
	
	method artistaEnPresentacion(artista) = artistas.contains(artista)
}

