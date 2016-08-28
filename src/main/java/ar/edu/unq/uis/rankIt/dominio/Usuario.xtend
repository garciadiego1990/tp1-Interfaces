package ar.edu.unq.uis.rankIt.dominio

import java.util.Calendar

class Usuario {
	String nombre = null
	var fechaDeRegistro = Calendar.getInstance()
	var estaActivo = false
	var estaBaneado = false
	
	
	// Accesors
	def void setNombre(String unNombre){
		nombre = unNombre
	}
	
	def getNombre(){
		nombre
	}

	def getFechaDeRegistro(){ 
		fechaDeRegistro
	}

	def void setEstaActivo(boolean unBooleano){
		estaActivo = unBooleano
	}
	
	def getEstaActivo(){
		estaActivo
	}
	
	def void setEstaBaneado(boolean unBooleano){
		estaBaneado = unBooleano
	}
	
	def getEstaBaneado(){
		estaBaneado
	}
	
}

