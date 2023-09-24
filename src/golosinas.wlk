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
	var property precio
	var property peso
	var property sabor
	var property contieneGluten 
	var property pesoBanio = 4
	
	method asignarPeso(golosinaBase){
		peso = peso.golosinaBase() + pesoBanio
	}
	
	method asignarPrecio(golosinaBase){
		precio = precio.golosinaBase() + 2
	}
	
	method asignarSabor(golosinaBase){
		sabor = sabor.golosinaBase()
	}	
	
	method asignarEstado(golosinaBase){
		contieneGluten = contieneGluten.golosinaBase()
	}
	method recibirMordisco(golosinaBase){
			golosinaBase.recibirMordisco()
			pesoBanio -= 2
	}
}
	

object pastillaTuttiFrutti{
	
var property precio
var property peso = 5
var property sabor = frutilla
var property contieneGluten = true

method cambiarEstado(nuevoEstado){
	contieneGluten = nuevoEstado
}

method nuevoPrecio(){
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







