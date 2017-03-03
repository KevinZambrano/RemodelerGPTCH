package cl.keanzato.app.core;

public class Grupo {

	private int idgrupo;
	private int idorganizacion;
	private String nombregrupo;
	
	/**
	 * @return the idgrupo
	 */
	public int getIdgrupo() {
		return idgrupo;
	}
	/**
	 * @param idgrupo the idgrupo to set
	 */
	public void setIdgrupo(int idgrupo) {
		this.idgrupo = idgrupo;
	}
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
	 * @return the nombregrupo
	 */
	public String getNombregrupo() {
		return nombregrupo;
	}
	/**
	 * @param nombregrupo the nombregrupo to set
	 */
	public void setNombregrupo(String nombregrupo) {
		this.nombregrupo = nombregrupo;
	}
	/**
	 * @param idgrupo
	 * @param idorganizacion
	 * @param nombregrupo
	 */
	public Grupo(int idgrupo, int idorganizacion, String nombregrupo) {
		super();
		this.idgrupo = idgrupo;
		this.idorganizacion = idorganizacion;
		this.nombregrupo = nombregrupo;
	}
	/**
	 * 
	 */
	public Grupo() {
		super();
	}
	
	
}
