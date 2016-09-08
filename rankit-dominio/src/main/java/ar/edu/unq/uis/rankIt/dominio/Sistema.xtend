package ar.edu.unq.uis.rankIt.dominio

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Sistema {
	List<Publicacion> servicios 
	List<Publicacion> lugares
	// manejador de publicaciones
	List<Usuario> usuarios
	
	new() {
		servicios = new ArrayList<Publicacion>
		lugares = new ArrayList<Publicacion>
		usuarios = new ArrayList<Usuario>
	}

	def void agregarServicio(Publicacion servicio) {
		servicios.add(servicio)
	}

	def void agregarLugar(Publicacion lugar) {
		lugares.add(lugar)
	}
	
	def void agregarUsuario(Usuario u) {
		usuarios.add(u)
	}
	
	def int usuariosActivos() {
		usuarios.filter[it | it.estaActivo].size
	}
	
	def int usuariosActivos() {
		usuarios.filter[it | it.estaActivo].size
	}
	
	def void agregarCalificacion(Calificacion c, Publicacion p) {
		p.agregar(c)
	}
	
	def void eliminarCalificacion(Calificacion c, Publicacion p) {
		p.eliminar(c)
	}
	
	def int calificacionesRegistradas() {
		return this.calificacionesDeServicios + (this.calificacionesDeLugares)
	}
	
	def int calificacionesDeServicios() {
		var ret  = 0
		for(Publicacion p : this.servicios) {
			ret += p.calificaciones.size
		}
			return ret
	}
	
	def int calificacionesDeLugares() {
		var ret  = 0
		for(Publicacion p : this.lugares) {
			ret += p.calificaciones.size
		}
			return ret
	}
	
	def void eliminarServicio(String nombreServicio) {
		servicios = servicios.filter[it | it.nombre != nombreServicio].toList
	}
	
	def void eliminarLugar(String nombreLugar) {
		lugares = lugares.filter[it | it.nombre != nombreLugar].toList
	}
	
	def int lugaresHabilitados() {
		return lugares.filter[it | it.estaHabilitado].size
	}
	
	def int lugaresDeshabilitados() {
		return lugares.filter[it | !it.estaHabilitado].size
	}
	
	def int serviciosHabilitados() {
		return servicios.filter[it | it.estaHabilitado].size
	}
	
	def int serviciosDeshabilitados() {
		return servicios.filter[it | !it.estaHabilitado].size
	}
	
	
	
	

}
