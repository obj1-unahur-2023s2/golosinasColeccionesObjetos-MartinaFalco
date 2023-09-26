import golosinas.*
import sabores.*

object mariano {
	const bolsaDeGolosinas = []
	
	method golosinasFaltantes(golosinasDeseadas){
		//Estan en la lista de golosinasDeseadas y no en la lista de bolsaDeGolosinas.
		return golosinasDeseadas.difference({bolsaDeGolosinas})
	}
	
	method gustosFaltantes(gustosDeseados) {
		gustosDeseados.difference({unaGolosina => unaGolosina.sabor()})
	}
	
	method comprar(unaGolosina){
		bolsaDeGolosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		bolsaDeGolosinas.remove(unaGolosina)
	}	

	method cantidadDeGolosinas(){
		return bolsaDeGolosinas.size()
	}

	method tieneLaGolosina(unaGolosina){
		return bolsaDeGolosinas.contains(unaGolosina)
	}
	
	method probarGolosinas(){
		//La manera de ejecutar el comando sobre cada uno de los elementos de la colección es:
		bolsaDeGolosinas.forEach({unaGolosina => unaGolosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC(){
		//Para saber si un objeto de la colección cumple una condición
		bolsaDeGolosinas.any({unaGolosina => not(unaGolosina.contieneGluten())})
	}
	
	method preciosCuidados(){
		//Para saber si todos los objetos de la colección cumplen una condición
		bolsaDeGolosinas.all({unaGolosina => unaGolosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		//Para obtener un objeto de la colección que cumpla una condición
		bolsaDeGolosinas.find({unaGolosina => unaGolosina.sabor() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		//Para obtener un subconjunto/sublista de la colección que cumpla una condición
		bolsaDeGolosinas.filter({unaGolosina => unaGolosina.sabor() == unSabor})
	}
	
	method sabores(){
		//Devuelve los sabores de las golosinas de la bolsa, idealmente sin repetidos.
		bolsaDeGolosinas.map({unaGolosina => unaGolosina.sabor()})
	}
	method golosinaMasCara(){
		bolsaDeGolosinas.max({unaGolosina => unaGolosina.precio()})
	}
	
	method pesoGolosinas(){
		bolsaDeGolosinas.sum({unaGolosina => unaGolosina.peso()})
	}
}
