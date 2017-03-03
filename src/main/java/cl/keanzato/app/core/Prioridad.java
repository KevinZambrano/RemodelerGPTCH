package cl.keanzato.app.core;

public class Prioridad {

	private int idprioridad;
	private String nombre;
	/**
	 * @return the idprioridad
	 */
	public int getIdprioridad() {
		return idprioridad;
	}
	/**
	 * @param idprioridad the idprioridad to set
	 */
	public void setIdprioridad(int idprioridad) {
		this.idprioridad = idprioridad;
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
	 * @param idprioridad
	 * @param nombre
	 */
	public Prioridad(int idprioridad, String nombre) {
		super();
		this.idprioridad = idprioridad;
		this.nombre = nombre;
	}
	/**
	 * 
	 */
	public Prioridad() {
		super();
	}
	
	
}
