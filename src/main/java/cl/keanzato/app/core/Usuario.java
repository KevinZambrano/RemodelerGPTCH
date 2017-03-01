package cl.keanzato.app.core;

public class Usuario {

	private int idusuario;
	private int idgrupo;
	private String nombre;
	private String apellidopaterno;
	private String apellidomaterno;
	/**
	 * @return the idusuario
	 */
	public int getIdusuario() {
		return idusuario;
	}
	/**
	 * @param idusuario the idusuario to set
	 */
	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}
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
	 * @return the apellidopaterno
	 */
	public String getApellidopaterno() {
		return apellidopaterno;
	}
	/**
	 * @param apellidopaterno the apellidopaterno to set
	 */
	public void setApellidopaterno(String apellidopaterno) {
		this.apellidopaterno = apellidopaterno;
	}
	/**
	 * @return the apellidomaterno
	 */
	public String getApellidomaterno() {
		return apellidomaterno;
	}
	/**
	 * @param apellidomaterno the apellidomaterno to set
	 */
	public void setApellidomaterno(String apellidomaterno) {
		this.apellidomaterno = apellidomaterno;
	}
	/**
	 * @param idusuario
	 * @param idgrupo
	 * @param nombre
	 * @param apellidopaterno
	 * @param apellidomaterno
	 */
	public Usuario(int idusuario, int idgrupo, String nombre, String apellidopaterno, String apellidomaterno) {
		super();
		this.idusuario = idusuario;
		this.idgrupo = idgrupo;
		this.nombre = nombre;
		this.apellidopaterno = apellidopaterno;
		this.apellidomaterno = apellidomaterno;
	}
	/**
	 * 
	 */
	public Usuario() {
		super();
	}
	
	
}
