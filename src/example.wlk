

class Elemento{
	var property anio 
}
class Lugar{
	var property habitantes = []
	 method nuevoHabitante(habitante){
	 	habitantes.add(habitante)
	 }
	 method destierro(habitante){
	 	habitantes.remove(habitante)
	 }
}

class Personaje{
	var caracteristicas = ""
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

const patineta = new Elemento(anio =  2015)
const libroDeportivo = new Elemento(anio = 2015)
const fotoReloj = new Elemento(anio = 1885)
const fotoFamilia = new Elemento(anio = 1985)
const lentes = new Elemento( anio = 1985)
const perro = new Elemento( anio = 1980)
const revistaUTN = new Elemento(anio = 2016)

const docBrown = new Personaje(caracteristicas = "le dicen doc", elementosPersonales=[fotoReloj,lentes,perro,revistaUTN],edad = 71,altura = 1.8) 
const marty = new Personaje(caracteristicas = "Se enoja cuando le dicen gallina",elementosPersonales = [patineta,fotoFamilia],edad = 25,altura = 1.7)
const biff =new Personaje(caracteristicas = "tiene un caracter feo", elementosPersonales=[libroDeportivo],edad = 25,altura = 2)




object hoy{
	var property anio = 2019
}

object deLorean{
	var property condensador = true
	var property fechaDestino
	var property velocidad
	var combustible = plutonio
	var property pasajeros = [marty,docBrown]
	method subirA(personaje){
		pasajeros.add(personaje)
	}
	method bajarA(personaje){
		pasajeros.remove(personaje)
	}
	method viajar(lugarActual,destino,fecha){
		self.velocidad(88)
 		condensador = true
		pasajeros.forEach({pasajero => combustible.afectar(pasajero)  destino.nuevoHabitante(pasajero) lugarActual.destierro(pasajero) hoy.anio(fecha)})
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

const sanMartin = new Lugar(habitantes = [marty,docBrown])
const gesell = new Lugar(habitantes = [biff])
