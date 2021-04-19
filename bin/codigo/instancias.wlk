import artistas.*
import canciones.*
import instrumentos.*
import presentaciones.*
import costos.*
import ubicacion.*
/*
 * Instanciaciones
 * 
 */
const laFamilia = new Cancion(duracion = 264, letra = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia", titulo = null)
const eres = new Cancion(duracion = 145, letra = "Eres lo mejor que me paso en la vida, no tengo duda, no habra mas nada despues de ti. Eres lo que le dio brillo al dia a dia, y asi sera por siempre, no cambiara, hasta el final de mis dias", titulo = null)
const corazonAmericano = new Cancion(duracion = 154, letra = "Canta corazon, canta más alto, que tu pena al fin se va marchando, el nuevo milenio ha de encontrarnos, junto corazon, como soniamos", titulo = null)
const cisne = new Cancion(duracion = 312, letra = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar", titulo = "cisne")
const almaDeDiamante = new Cancion(duracion = 216, letra = "Ven a mí con tu dulce luz alma de diamante. Y aunque el sol se nuble después sos alma de diamante. Cielo o piel silencio o verdad sos alma de diamante. Por eso ven así con la humanidad alma de diamante", titulo = "alma De Diamante")
const crisantemo = new Cancion(duracion = 175, letra = "Tócame junto a esta pared, yo quede por aquí... cuando no hubo más luz... quiero mirar a través de mi piel... Crisantemo, que se abrió... encuentra el camino hacia el cielo", titulo = "crisantemo")
const joaquin = new Musico(albumesPublicados = [ especialLaFamilia ], tipoMusico = new MusicoGrupal(plusGrupo = 5, habilidadCanto = 20, tocaEn = grupo), tipoCobro = costoMusicoGrupal, costoBase = 100, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const kike = new Musico(tipoMusico = new MusicoGrupal(habilidadCanto = 60, plusGrupo = 20, tocaEn = grupo), albumesPublicados = [], tipoCobro = costoMusicoGrupal, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const soledad = new Musico(tipoMusico = new VocalistaPopular(habilidadCanto = 55, palabraClave = "amor", tocaEn = solista), albumesPublicados = [ laSole ], tipoCobro = costoVocalista, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const especialLaFamilia = new Album(fechaDeLanzamiento = new Date(day = 17, month = 06, year = 1992), listaDeCanciones = [ laFamilia ], cantidadDeUnidades = 100000, unidadesVendidas = 89000)
const laSole = new Album(fechaDeLanzamiento = new Date(day = 04, month = 02, year = 2005), listaDeCanciones = [ eres, corazonAmericano ], cantidadDeUnidades = 200000, unidadesVendidas = 130000)
const paraLosArboles = new Album(fechaDeLanzamiento = new Date(day = 31, month = 03, year = 200), listaDeCanciones = [ cisne, almaDeDiamante ], cantidadDeUnidades = 50000, unidadesVendidas = 49000)
const justCrisantemo = new Album(fechaDeLanzamiento = new Date(day = 05, month = 12, year = 2007), listaDeCanciones = [ crisantemo ], cantidadDeUnidades = 28000, unidadesVendidas = 27500)
const fender = new Instrumento(puntos = 10)
const gibson = new Instrumento(puntos = 15)
const lucia = new Musico(tipoMusico = new VocalistaPopular(habilidadCanto = 70, palabraClave = "familia", tocaEn = solista), albumesPublicados = [], tipoCobro = costoVocalista, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const recitalLunaPark = new Presentacion(fecha = new Date(day = 20, month = 04, year = 2021), ubicacion = lunaPark)
const recitalLaTrastienda = new Presentacion(fecha = new Date(day = 15, month = 11, year = 2020), ubicacion = laTrastienda)
const laFamiliaRemix = new Remix(cancionOriginal = laFamilia)
const mashupDeAlmaDiamanteYCrisantemo = new Mashups(canciones = [almaDeDiamante, crisantemo])
const mashupDeCrisantemoYAlmaDiamante = new Mashups(canciones = [crisantemo, almaDeDiamante])
const pdpalooza = new Presentacion(fecha = new Date(day = 18, month = 12, year = 2020), ubicacion = lunaPark)
const aliciaEnElPais = new Cancion(duracion = 510, letra = "Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.", titulo="Canción de Alicia en el país")
const laSoledadPastorutti = new Musico(tipoMusico = new VocalistaPopular(habilidadCanto = 80, palabraClave = "amor", tocaEn = solista), albumesPublicados = [ laSole ], tipoCobro = costoVocalista, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const pepe = new Musico(albumesPublicados = [ especialLaFamilia ], tipoMusico = new MusicoGrupal(plusGrupo = 5, habilidadCanto = 70, tocaEn = grupo), tipoCobro = costoMusicoGrupal, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const pepito = new Musico(albumesPublicados = [ especialLaFamilia ], tipoMusico = new MusicoGrupal(plusGrupo = 5, habilidadCanto = 50, tocaEn = grupo), tipoCobro = costoMusicoGrupal, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const laCuca = new Cancion(duracion = 250, letra = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar", titulo = null)
const luciaMejorada = new Musico(tipoMusico = new VocalistaPopular(habilidadCanto = 90, palabraClave = "familia", tocaEn = solista), albumesPublicados = [], tipoCobro = costoVocalista, costoBase = 0, personasMinimas = 0, fechaSinAdicional = null, porcentajeAdicional = 0)
const musicoPorInflacion = new Musico(tipoMusico = new Palabreros(palabraClave = "familia", tocaEn = solista, habilidadCanto = 50), tipoCobro = costoExpectativaInlfacionaria, costoBase = 500, personasMinimas = 100, fechaSinAdicional = new Date(day = 15, month = 11, year = 2020), porcentajeAdicional = 5)
const musicoPalabrero = new Musico(tipoMusico = new Palabreros(palabraClave = "cielo", tocaEn = solista, habilidadCanto = 50),albumesPublicados = [paraLosArboles], tipoCobro = costoExpectativaInlfacionaria, costoBase = 500, personasMinimas = 100, fechaSinAdicional = new Date(day = 15, month = 11, year = 2020), porcentajeAdicional = 5)
const pdpaloozaSegundaFecha = new Presentacion(fecha = new Date(day = 19, month = 12, year = 2020), ubicacion = lunaPark)
