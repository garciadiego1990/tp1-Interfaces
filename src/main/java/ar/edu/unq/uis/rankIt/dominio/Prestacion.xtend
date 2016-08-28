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

	def void setNombre(String unNombre) { 
		nombre = unNombre
	}

	def getNombre() { 
		nombre
	}

	def void setEstaHabilitado(boolean nvoBooleano){
		estaHabilitado = nvoBooleano
	}
	
	def getEstaHabilitado() {
		estaHabilitado
	}

	def getFechaDeRegistro() {
		fechaDeRegistro
	}

	def void setCalificacion(int nvaCalificacion) {
		calificacion = nvaCalificacion
	}

	def getCalificacion() {
		calificacion
	}

	def void setFechaDeCalificacion(Calendar nvaFecha) {
		fechaDeCalificacion = nvaFecha
	}

	def getFechaDeCalificacion() {
		fechaDeCalificacion
	}
	
	def void setEvaluador(Usuario nvoEvaluador){
		evaluador = nvoEvaluador
	}
	
	def getEvaluador(Usuario nvoEvaluador){
		evaluador
	}
	
	def void setEsOfensivo(boolean nvoBooleano){
		esOfensivo = nvoBooleano
	}
	
	def getEsOfensivo(){
		esOfensivo
	}
	
	
}
