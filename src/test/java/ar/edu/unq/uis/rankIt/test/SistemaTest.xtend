package ar.edu.unq.uis.rankIt.test

import ar.edu.unq.uis.rankIt.dominio.Sistema
import org.junit.Test
import static org.junit.Assert.*

class SistemaTest {
	Sistema sistema = new Sistema()
	
	@Test
	def void testAgregarServicio(){
		assertTrue(sistema.servicios.length == 0)
		sistema.agregarServicio("Servicio Tecnico de PC")
		assertTrue(sistema.getServicios.length == 1)
	}
	
	@Test
	def void testAgregarLugar(){
		assertTrue(sistema.lugares.length == 0)
		sistema.agregarLugar("Parque Pereyra")
		assertTrue(sistema.getLugares.length == 1)
	}
 
	@Test 
	def void testEliminarServicio(){
		sistema.agregarServicio("Servicio Tecnico de PC")
		assertTrue(sistema.getServicios.length == 1)
		sistema.eliminarServicio("Servicio Tecnico de PC")
		assertTrue(sistema.getServicios.length == 0)
	}
	
	@Test 
	def void testEliminarLugar(){
		sistema.agregarLugar("Parque Pereyra")
		assertTrue(sistema.getLugares.length == 1)
		sistema.eliminarLugar("Parque Pereyra")
		assertTrue(sistema.getLugares.length == 0)
	}
	
}