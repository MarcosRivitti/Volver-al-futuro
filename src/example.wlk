

class Elemento{
	var property anioOrigen
	var property anioActual
	var descripcion = ""
	method esParadojico(){
		return anioOrigen == anioActual
	}
}
class Lugar{
	var nombre
	var descripcionLugar
	var elemetoDelLugar
	var property habitantes = []
	 method nuevoHabitante(habitante){
	 	habitantes.add(habitante)
	 }
	 method destierro(habitante){
	 	habitantes.remove(habitante)
	 }
	 method agregarDescripcion(personaje){
	 	personaje.caracteristicas(personaje.caracteristicas() + descripcionLugar)
	 }
	 method agregarElemento(personaje){
	 	personaje.elementosPersonales().add(elementoDelLugar)
	 }
	 method algunoTieneAlgoNuestro(){
	 	habitantes.any({personaje => personaje.elementos().any({elemento => elemento.descripcion().contains(nombre)})})
	 }
	 
}

class Personaje{
	var property caracteristicas = ""
	const property elementosPersonales = []
	var property edad
	var altura
	method esMayor(){
		return edad > 50
	}
	method tieneElementosPropios(){
		return !elementosPersonales.isEmpty()
	}
	method pertenenciaMasAntigua(){
		return elementosPersonales.min({elemento => elemento.anio()})
	}
	
}

const patineta = new Elemento(anioOrigen =  2015,anioActual =2000,descripcion = "vuela")
const libroDeportivo = new Elemento(anioOrigen = 2015,anioActual =2015,descripcion = "te dice quien salio campeon")
const fotoReloj = new Elemento(anioOrigen = 1885,anioActual =1885,descripcion = "esta en blanco y negro")
const fotoFamilia = new Elemento(anioOrigen = 1985,anioActual =1985,descripcion = "familia mcfly")
const lentes = new Elemento( anioOrigen = 1985,anioActual =1985,descripcion = "estan rotos")
const perro = new Elemento( anioOrigen = 1980,anioActual =1980,descripcion = "ladra")
const revistaUTN = new Elemento(anioOrigen = 2016,anioActual =2016,descripcion = "")
const arena = new Elemento(anioOrigen = 1985,anioActual =1985,descripcion = "Carlos Gesell")
const mate = new Elemento(anioOrigen = 2000,anioActual =2000,descripcion = "el termo se vende por separado")

const docBrown = new Personaje(caracteristicas = "le dicen doc", elementosPersonales=[fotoReloj,lentes,perro,revistaUTN],edad = 71,altura = 1.8) 
const marty = new Personaje(caracteristicas = "Se enoja cuando le dicen gallina",elementosPersonales = [patineta,fotoFamilia],edad = 25,altura = 1.7)
const biff =new Personaje(caracteristicas = "tiene un caracter feo", elementosPersonales=[libroDeportivo],edad = 25,altura = 2)



object deLorean{
	var property condensador = true
	var property fechaDestino
	var property velocidad
	var combustible = plutonio
	var property paradero
	var property pasajeros = [marty,docBrown]
	method subirA(personaje){
		pasajeros.add(personaje)
	}
	method bajarA(personaje){
		pasajeros.remove(personaje)
	}
	method viajar(lugarActual,destino,fecha){
		paradero = destino
		self.velocidad(88)
 		condensador = true
		pasajeros.forEach({pasajero => combustible.afectar(pasajero)  destino.nuevoHabitante(pasajero) lugarActual.destierro(pasajero) hoy.anio(fecha) destino.agregarDescripcion(personaje) destino.agregarElemento(personaje)})
	}  

}


object nafta{
	method afectar(personaje){
		personaje.altura(personaje.altura()-0.01)
	}
}
object plutonio{
	method afectar(personaje){
		if(personaje.esMayor())
			personaje.edad(personaje.edad()-10)
		else
			personaje.edad(personaje.edad()+5)	
	}
}
object energiaElectrica{
	 method afectar(personaje){
	 	personaje.elementosPersonales().remove(personaje.pertenenciaMasAntigua())
	 }
}

const sanMartin = new Lugar(nombre = "General San Martin",descripcion = "chacarita campeon 1969",mate,habitantes = [marty,docBrown])
const gesell = new Lugar(nombre = "Carlos Gesell",descripcion = "no deje de visitar nuestro muelle",arena,habitantes = [biff])
