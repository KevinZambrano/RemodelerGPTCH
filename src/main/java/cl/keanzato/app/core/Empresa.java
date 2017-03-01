package cl.keanzato.app.core;

public class Empresa {

	private int idempresa;
	private String nombre;
	
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
	 * @param idempresa
	 * @param nombre
	 */
	public Empresa(int idempresa, String nombre) {
		super();
		this.idempresa = idempresa;
		this.nombre = nombre;
	}
	/**
	 * 
	 */
	public Empresa() {
		super();
	}
	
	
}
