package cl.keanzato.app.core;

public class Categoria {

	private int idcategoria;
	private String nombre;
	/**
	 * @return the idcategoria
	 */
	public int getIdcategoria() {
		return idcategoria;
	}
	/**
	 * @param idcategoria the idcategoria to set
	 */
	public void setIdcategoria(int idcategoria) {
		this.idcategoria = idcategoria;
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
	 * @param idcategoria
	 * @param nombre
	 */
	public Categoria(int idcategoria, String nombre) {
		super();
		this.idcategoria = idcategoria;
		this.nombre = nombre;
	}
	/**
	 * 
	 */
	public Categoria() {
		super();
	}
	
	
}
