package ar.edu.unq.uis.rankIt.dominio

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Date

@Accessors
class Usuario {
	String nombre;
	Date fechaDeRegistro;
	String password;
	Boolean estaActivo = false
	Boolean estaBanneado = false
	
		
	/** Contructor de la clase {@link Usuario}.
	* 
	* @param String nombre - El nombre del {@link Usuario} en RankIt
	* @param Date fechaDeRegistro - La fecha de registro del {@link Usuario}. 
	*/
	new(String nombre, Date fechaDeRegistro) {
		this.nombre = nombre;
		this.fechaDeRegistro = fechaDeRegistro;
		this.estaActivo = false;
		this.estaBanneado = false;
	} 
	
	
	/** Dado un password, se lo asigna al {@link Usuario}.
	 * @param password String - Password que se le asignará al {@link Usuario}.*/
	def void setPassword(String password) {
		this.password = password
	}
	
	
	
	/** Dado un Boolean, se actualiza si el {@link Usuario} está o no activo en RankIt.
	* Si se da como paŕametro true, el {@link Usuario} pasará a estar inactivo; 
	* Caso contrario, si se da como parámetro false el {@link Usuario} pasará a estar activo.*/
	def void setEstaActivo(Boolean estado) {
		this.estaActivo = estado;
	}
	
	
	/** Dado un Boolean, se actualiza si el {@link Usuario} está o no banneado en RankIt.
	* Si se da como paŕametro true, el {@link Usuario} pasará a estar banneado e inmediatamente
	* quedará también inactivo; 
	* Caso contrario, si se da como parametro false el {@link Usuario} no estará banneado.*/
	def void setEstaBaneado(Boolean estado) {
		this.estaBanneado = estado;
	}
	
	
	/** Se responde si el Usuario está activo en RankIt.*/
	def Boolean getEstaActivo() {
		return this.estaActivo;
	}
	
	
	/** Se responde si el {@link Usuario} está banneado en RankIt.
	* Si el {@link Usuario} está banneado también estará inactivo.
	*/
	def Boolean getEstaBaneado(Boolean estado) {
		return this.estaBanneado;
	}
	
	
}