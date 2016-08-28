package ar.edu.unq.uis.rankIt.dominio

import java.util.Calendar

class Prestacion {
	String nombre = null
	var estaHabilitado = false
	var fechaDeRegistro = Calendar.getInstance()
	Integer calificacion = null
	Calendar fechaDeCalificacion = null
	Usuario evaluador = null
	var esOfensivo = false
	
	
	def void setNombre(String unNombre){
		nombre = unNombre
	}
	
	def getNombre(){
		nombre
	}
	
	
}