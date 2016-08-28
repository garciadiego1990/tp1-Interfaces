package ar.edu.unq.uis.rankIt.dominio

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Prestacion {
	String nombre 
	Boolean estaHabilitado 
	Date fechaDeRegistro 
	Integer calificacion 
	Date fechaDeCalificacion 
	Usuario evaluador 
	Boolean esOfensivo
	
	new() {
		
	} 	
	
}
