import golosinas.*

object mariano {
	const bolsaDeGolosinas = []
	const golosinasDeseadas = []
	
	method golosinasFaltantes(golosinas){
		//Estan en la lista de golosinasDeseadas y no en la lista de bolsaDeGolosinas.

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
		//Devolver un atributo de todos los objetos sin repetidos 
		
	}
	method golosinaMasCara(){
		bolsaDeGolosinas.max({unaGolosina => unaGolosina.precio()})
	}
	
	method pesoGolosinas(){
		bolsaDeGolosinas.sum({unaGolosina => unaGolosina.peso()})
	}
}
