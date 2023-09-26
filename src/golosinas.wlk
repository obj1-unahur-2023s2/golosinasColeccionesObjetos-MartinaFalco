import sabores.*

object bombon {
var property precio = 5
var property peso = 15
var property sabor = frutilla
var property contieneGluten = false

method recibirMordisco(){
	peso = (peso * 0.8) - 1
}

}

object alfajor {
var property precio = 12
var property peso = 300
var property sabor = chocolate
var property contieneGluten = true

method recibirMordisco(){
	peso = (peso * 0.8)
}

}

object caramelo{
	
var property precio = 1
var property peso = 5
var property sabor = frutilla
var property contieneGluten = false

method recibirMordisco(){
	peso -= 1
}
	
}

object chupetin{

var property precio = 2
var property peso = 7
var property sabor = naranja
var property contieneGluten = false

method recibirMordisco(){
	if (peso > 2){
		peso = peso * 0.9
	}
}

}

object oblea{
	
var property precio = 5
var property peso = 250
var property sabor = vainilla
var property contieneGluten = true

method recibirMordisco(){
	if(peso > 70){
		peso = peso * 0.5
	}
	if(peso < 70){
		peso = peso * 0.25
	}
}	
}

object chocolatin{
var property peso = 0
var property precio = 0
var property sabor = chocolate
var property contieneGluten = true

method asignarPeso(nuevoPeso){
		peso = nuevoPeso
		precio = peso * 0.50
	}

method recibirMordisco(){
	peso -= 2
}

}


object golosinaBaniada{
	var property precio = 0
	var property peso = 0
	var property sabor
	var property contieneGluten 
	var property pesoBanio = 4
	var property golosinaBase
	
	method asignarGolosinaBase(golosina){
		golosinaBase = golosina	
		peso = golosinaBase.peso() + pesoBanio
		precio = golosinaBase.precio() + 2
		sabor =  golosinaBase.sabor()
		contieneGluten = golosinaBase.contieneGluten()
	}
	method recibirMordisco(){
			golosinaBase.recibirMordisco()
			pesoBanio -= 2
			peso = golosinaBase.peso() + pesoBanio
	}
}
	
object pastillaTuttiFrutti{
	
var property precio = 0
var property peso = 5
var property sabor = frutilla
var property contieneGluten

method cambiarEstado(nuevoEstado){
	contieneGluten = nuevoEstado
	
	if(not(contieneGluten)){
		precio = 7
	}
	else{
		precio = 10
	}
}

method recibirMordisco(){
	sabor = sabor.saborSiguiente()
		
}


}







