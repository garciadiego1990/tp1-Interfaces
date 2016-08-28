package ar.edu.unq.uis.rankIt.dominio

import java.util.ArrayList

//import java.util.List
import java.util.Iterator;

class Sistema {
	var servicios = new ArrayList<Prestacion>
	var lugares = new ArrayList<Prestacion>
	var calificaciones = new ArrayList<Prestacion>

	def getServicios() {
		servicios
	}

	def getLugares() {
		lugares
	}

	def getCalificaciones() {
		calificaciones
	}

	def void agregarServicio(String unNombre) {
		var nvoServicio = new Prestacion
		nvoServicio.setNombre(unNombre)
		servicios.add(nvoServicio)
	}

	def void agregarLugar(String unNombre) {
		var nvoLugar = new Prestacion
		nvoLugar.setNombre(unNombre)
		lugares.add(nvoLugar)
	}

	def void eliminarServicio(String unNombre) {
		var listaFiltrada = new ArrayList<Prestacion>
		for (Prestacion prestacion : servicios) {
			if (!prestacion.getNombre.equals(unNombre)) {
				listaFiltrada.add(prestacion)
			}
		}
		servicios = listaFiltrada
	}

	def eliminarLugar(String unNombre) {
		var listaFiltrada = new ArrayList<Prestacion>
		for (Prestacion prestacion : lugares) {
			if (!prestacion.getNombre.equals(unNombre)) {
				listaFiltrada.add(prestacion)
			}
		}
		lugares = listaFiltrada
	}
}
