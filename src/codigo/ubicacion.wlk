object lunaPark{
	
	method capacidad(fecha) = 9290

}

object laTrastienda{
	method capacidad(fecha) {
		if (fecha.dayOfWeek() != saturday) {
			return 400
		} else {
			return 700
		}
	}

}

object prixDami{
	method capacidad(fecha) = 150
}

object laCueva{
	method capacidad(fecha) = 14000
}