package cl.keanzato.app.core;

public class Impacto {

	private int idimpacto;
	private String nombre;
	/**
	 * @return the idimpacto
	 */
	public int getIdimpacto() {
		return idimpacto;
	}
	/**
	 * @param idimpacto the idimpacto to set
	 */
	public void setIdimpacto(int idimpacto) {
		this.idimpacto = idimpacto;
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
	 * @param idimpacto
	 * @param nombre
	 */
	public Impacto(int idimpacto, String nombre) {
		super();
		this.idimpacto = idimpacto;
		this.nombre = nombre;
	}
	/**
	 * 
	 */
	public Impacto() {
		super();
	}
	
	
}
