package cl.keanzato.app.core;

public class Organizacion {

	private int idorganizacion;
	private int idempresa;
	private String nombre;
	/**
	 * @return the idorganizacion
	 */
	public int getIdorganizacion() {
		return idorganizacion;
	}
	/**
	 * @param idorganizacion the idorganizacion to set
	 */
	public void setIdorganizacion(int idorganizacion) {
		this.idorganizacion = idorganizacion;
	}
	/**
	 * @return the idempresa
	 */
	public int getIdempresa() {
		return idempresa;
	}
	/**
	 * @param idempresa the idempresa to set
	 */
	public void setIdempresa(int idempresa) {
		this.idempresa = idempresa;
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
	 * 
	 */
	public Organizacion() {
		super();
	}
	/**
	 * @param idorganizacion
	 * @param idempresa
	 * @param nombre
	 */
	public Organizacion(int idorganizacion, int idempresa, String nombre) {
		super();
		this.idorganizacion = idorganizacion;
		this.idempresa = idempresa;
		this.nombre = nombre;
	}
	
	
}
