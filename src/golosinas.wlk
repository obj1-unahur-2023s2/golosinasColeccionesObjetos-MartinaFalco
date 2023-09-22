
object bombon {
var property precio = 5
var property peso = 15
var property sabor = "Frutilla"
var property contieneGluten = false

method recibirMordisco(){
	peso = (peso * 0.8 - 1)
}

}

object alfajor {
var property precio = 12
var property peso = 300
var property sabor = "Chocolate"
var property contieneGluten = true

method recibirMordisco(){
	peso = (peso * 0.8)
}

}

object caramelo{
	
var property precio = 1
var property peso = 5
var property sabor = "Frutilla"
var property contieneGluten = false

method recibirMordisco(){
	peso -= 1
}
	
}

object chupetin{

var property precio = 2
var property peso = 7
var property sabor = "Naranja"
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
var property sabor = "Vainilla"
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
var property peso
var property precio = peso * 0.50
var property sabor = "Chocolate"
var property contieneGluten = true

method asignarPeso(nuevoPeso){
		peso = nuevoPeso
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
	
	method asignarPeso(golosinaBase){
		peso = peso.golosinaBase() + 4
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
	method recibirMordisco(golosinaBase, cantidad){
		golosinaBase.recibirMordisco()
		if (cantidad == 1){
			peso -= 2
		}	
		if (cantidad == 2){
			peso -= 4
		}	
	}
}
	

object pastillaTuttiFrutti{
	
var property precio
var property peso = 5
var property sabor
var property contieneGluten

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

method recibirMordisco(cantidad){
	if (cantidad == 1){
		sabor = "frutilla"
	}
	if (cantidad == 2){
		sabor = "chocolate"
	}
	if (cantidad == 3){
		sabor = "naranja"
	}
	if (cantidad == 4){
		sabor = "frutilla"
	}	
}
		
}










