package cl.keanzato.app.trans;

public class ProblemaComplete {

	private String idproblema;
	private String grupo;
	private String usuario;
	private String resumen;
	private String fechainicio;
	private String fechaupdate;
	private String estado;
	private String prioridad;
	private String impacto;
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
	 * @return the grupo
	 */
	public String getGrupo() {
		return grupo;
	}
	/**
	 * @param grupo the grupo to set
	 */
	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}
	/**
	 * @return the usuario
	 */
	public String getUsuario() {
		return usuario;
	}
	/**
	 * @param usuario the usuario to set
	 */
	public void setUsuario(String usuario) {
		this.usuario = usuario;
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
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}
	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}
	/**
	 * @return the prioridad
	 */
	public String getPrioridad() {
		return prioridad;
	}
	/**
	 * @param prioridad the prioridad to set
	 */
	public void setPrioridad(String prioridad) {
		this.prioridad = prioridad;
	}
	/**
	 * @return the impacto
	 */
	public String getImpacto() {
		return impacto;
	}
	/**
	 * @param impacto the impacto to set
	 */
	public void setImpacto(String impacto) {
		this.impacto = impacto;
	}
	/**
	 * @param idproblema
	 * @param grupo
	 * @param usuario
	 * @param resumen
	 * @param fechainicio
	 * @param fechaupdate
	 * @param estado
	 * @param prioridad
	 * @param impacto
	 */
	public ProblemaComplete(String idproblema, String grupo, String usuario, String resumen, String fechainicio,
			String fechaupdate, String estado, String prioridad, String impacto) {
		super();
		this.idproblema = idproblema;
		this.grupo = grupo;
		this.usuario = usuario;
		this.resumen = resumen;
		this.fechainicio = fechainicio;
		this.fechaupdate = fechaupdate;
		this.estado = estado;
		this.prioridad = prioridad;
		this.impacto = impacto;
	}
	/**
	 * 
	 */
	public ProblemaComplete() {
		super();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ProblemaComplete [idproblema=" + idproblema + ", grupo=" + grupo + ", usuario=" + usuario + ", resumen="
				+ resumen + ", fechainicio=" + fechainicio + ", fechaupdate=" + fechaupdate + ", estado=" + estado
				+ ", prioridad=" + prioridad + ", impacto=" + impacto + "]";
	}
	
	
}
