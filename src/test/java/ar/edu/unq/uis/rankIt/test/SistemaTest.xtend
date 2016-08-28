package ar.edu.unq.uis.rankIt.test

import ar.edu.unq.uis.rankIt.dominio.Sistema
import org.junit.Test
import org.junit.Assert

class SistemaTest {
	Sistema sistema = new Sistema()
	
	@Test
	def void testAgregarServicio(){
		Assert.assertTrue(sistema.servicios.length == 0)
		sistema.agregarServicio("Servicio Tecnico de PC")
		Assert.assertTrue(sistema.getServicios.length == 1)
	}
	
	@Test
	def void testAgregarLugar(){
		Assert.assertTrue(sistema.lugares.length == 0)
		sistema.agregarLugar("Parque Pereyra")
		Assert.assertTrue(sistema.getLugares.length == 1)
	}
 
	@Test 
	def void testEliminarServicio(){
		sistema.agregarServicio("Servicio Tecnico de PC")
		sistema.eliminarServicio("Servicio Tecnico de PC")
		Assert.assertEquals(sistema.servicios.length, 0)
	}
	
	@Test 
	def void testEliminarLugar(){
		sistema.agregarLugar("Parque Pereyra")
		Assert.assertTrue(sistema.getLugares.length == 1)
		sistema.eliminarLugar("Parque Pereyra")
		Assert.assertEquals(sistema.lugares.length, 0)
	}
	
}