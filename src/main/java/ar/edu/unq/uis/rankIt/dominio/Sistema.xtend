package ar.edu.unq.uis.rankIt.dominio

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Sistema {
	List<Prestacion> servicios 
	List<Prestacion> lugares
	List<Prestacion> calificaciones
	
	new() {
		servicios = new ArrayList<Prestacion>
		lugares = new ArrayList<Prestacion>
		calificaciones = new ArrayList<Prestacion>
	}

	def void agregarServicio(String nombre) {
		var servicio = new Prestacion
		servicio.nombre = nombre
		servicios.add(servicio)
	}

	def void agregarLugar(String nombre) {
		var lugar = new Prestacion
		lugar.setNombre(nombre)
		lugares.add(lugar)
	}
	
	def void eliminarServicio(String nombreServicio) {
		servicios = servicios.filter[it | it.nombre != nombreServicio].toList
	}
	
	def void eliminarLugar(String nombreLugar) {
		lugares = lugares.filter[it | it.nombre != nombreLugar].toList
	}

}
