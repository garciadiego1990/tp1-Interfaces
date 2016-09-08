package ar.edu.unq.uis.rankIt.dominio

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class Publicacion {
	String nombre 
	Boolean estaHabilitado 
	Date fechaDeRegistro 
	List<Calificacion> calificaciones 
	Date fechaDeCalificacion 
	Usuario evaluador 
	Boolean esOfensivo
	
	new(String nombre) {
		this.nombre = nombre	
	}
	
	def void agregar(Calificacion c) {
		this.calificaciones.add(c)
	}
	
	def void eliminar(Calificacion c) {
		this.calificaciones.remove(c)
	} 	
	
}
