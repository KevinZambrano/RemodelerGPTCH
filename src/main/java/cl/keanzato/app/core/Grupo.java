package cl.keanzato.app.core;

public class Grupo {

	private int idgrupo;
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
	 * @return the nombre
	 */
	public String getNombregrupo() {
		return nombregrupo;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombregrupo(String nombregrupo) {
		this.nombregrupo = nombregrupo;
	}
	/**
	 * @param idgrupo
	 * @param nombre
	 */
	public Grupo(int idgrupo, String nombregrupo) {
		super();
		this.idgrupo = idgrupo;
		this.nombregrupo = nombregrupo;
	}
	/**
	 * 
	 */
	public Grupo() {
		super();
	}
	
	
}
