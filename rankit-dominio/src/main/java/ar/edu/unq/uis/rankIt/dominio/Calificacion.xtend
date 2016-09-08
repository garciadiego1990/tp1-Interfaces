package ar.edu.unq.uis.rankIt.dominio

import java.util.Date

class Calificacion {
	
	Publicacion publicacionEvaluada;
	Usuario usuarioCalificador;
	Date fechaDeEvaluacion;
	Boolean esOfensiva;
	Integer puntajeOtorgado;
	String detalle;
	
	/** Constructor que dados una publicación, un usuario, una fecha, un puntaje
	 * y el detalle de la evaluación.
	 */
	new(Publicacion evaluado, Usuario usuario, Date fecha,
		Integer puntaje, String detalle) {
		this.publicacionEvaluada = evaluado;
		this.usuarioCalificador = usuario;
		this.fechaDeEvaluacion = fecha;
		this.esOfensiva = false;
		this.puntajeOtorgado = puntaje;
		this.detalle = detalle;
	}
	
	
	
	new(Usuario usuario, String detalle) {
		this.usuarioCalificador = usuario;
		this.detalle = detalle;
	}
	
	
}