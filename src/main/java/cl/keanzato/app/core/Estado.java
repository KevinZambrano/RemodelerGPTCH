package cl.keanzato.app.core;

public class Estado {

	private int idestado;
	private String nombre;
	
	/**
	 * @return the idestado
	 */
	public int getIdestado() {
		return idestado;
	}
	/**
	 * @param idestado the idestado to set
	 */
	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}
	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	/**
	 * @param idestado
	 * @param nombre
	 */
	public Estado(int idestado, String nombre) {
		super();
		this.idestado = idestado;
		this.nombre = nombre;
	}
	/**
	 * 
	 */
	public Estado() {
		super();
	}
	
	
}
