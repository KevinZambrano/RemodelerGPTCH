package cl.keanzato.app.core;

public class Problema {

	private String idproblema;
	private int idgrupo;
	private int idusuario;
	private String resumen;
	private String fechainicio;
	private String fechaupdate;
	private int idestado;
	private int idprioridad;
	private int idimpacto;
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
	 * @param idproblema
	 * @param idgrupo
	 * @param idusuario
	 * @param resumen
	 * @param fechainicio
	 * @param fechaupdate
	 * @param idestado
	 * @param idprioridad
	 * @param idimpacto
	 */
	public Problema(String idproblema, int idgrupo, int idusuario, String resumen, String fechainicio,
			String fechaupdate, int idestado, int idprioridad, int idimpacto) {
		super();
		this.idproblema = idproblema;
		this.idgrupo = idgrupo;
		this.idusuario = idusuario;
		this.resumen = resumen;
		this.fechainicio = fechainicio;
		this.fechaupdate = fechaupdate;
		this.idestado = idestado;
		this.idprioridad = idprioridad;
		this.idimpacto = idimpacto;
	}
	/**
	 * 
	 */
	public Problema() {
		super();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Problema [idproblema=" + idproblema + ", idgrupo=" + idgrupo + ", idusuario=" + idusuario + ", resumen="
				+ resumen + ", fechainicio=" + fechainicio + ", fechaupdate=" + fechaupdate + ", idestado=" + idestado
				+ ", idprioridad=" + idprioridad + ", idimpacto=" + idimpacto + "]";
	}
	

	
	
}
