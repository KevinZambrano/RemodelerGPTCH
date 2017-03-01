package cl.keanzato.app.core;

public class Problema {

	private String idproblema;
	private int idgrupo;
	private int idusuario;
	private String resumen;
	private int idcategoria;
	private String fechainicio;
	private String fechaupdate;
	private int idestado;
	
	/**
	 * @return the idproblema
	 */
	public String getIdproblema() {
		return idproblema;
	}
	/**
	 * @param idproblema the idproblema to set
	 */
	public void setIdproblema(String idproblema) {
		this.idproblema = idproblema;
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
	 * @return the resumen
	 */
	public String getResumen() {
		return resumen;
	}
	/**
	 * @param resumen the resumen to set
	 */
	public void setResumen(String resumen) {
		this.resumen = resumen;
	}
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
	 * @return the fechainicio
	 */
	public String getFechainicio() {
		return fechainicio;
	}
	/**
	 * @param fechainicio the fechainicio to set
	 */
	public void setFechainicio(String fechainicio) {
		this.fechainicio = fechainicio;
	}
	/**
	 * @return the fechaupdate
	 */
	public String getFechaupdate() {
		return fechaupdate;
	}
	/**
	 * @param fechaupdate the fechaupdate to set
	 */
	public void setFechaupdate(String fechaupdate) {
		this.fechaupdate = fechaupdate;
	}
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
	 * @param idproblema
	 * @param idgrupo
	 * @param idusuario
	 * @param resumen
	 * @param idcategoria
	 * @param fechainicio
	 * @param fechaupdate
	 * @param idestado
	 */
	public Problema(String idproblema, int idgrupo, int idusuario, String resumen, int idcategoria, String fechainicio,
			String fechaupdate, int idestado) {
		super();
		this.idproblema = idproblema;
		this.idgrupo = idgrupo;
		this.idusuario = idusuario;
		this.resumen = resumen;
		this.idcategoria = idcategoria;
		this.fechainicio = fechainicio;
		this.fechaupdate = fechaupdate;
		this.idestado = idestado;
	}
	/**
	 * 
	 */
	public Problema() {
		super();
	}
	
	
}
