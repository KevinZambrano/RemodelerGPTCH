package cl.keanzato.app.core;

public class Tarea {

	private int idtarea;
	private String idproblema;
	private int idempresa;
	private int idorganizacion;
	private int idgrupo;
	private int idusuario;
	private String resumen;
	private String fechacreacion;
	private String fechainicio;
	private String fechatermino;
	private String fechaterminoreal;
	/**
	 * @return the idtarea
	 */
	public int getIdtarea() {
		return idtarea;
	}
	/**
	 * @param idtarea the idtarea to set
	 */
	public void setIdtarea(int idtarea) {
		this.idtarea = idtarea;
	}
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
	 * @return the fechacreacion
	 */
	public String getFechacreacion() {
		return fechacreacion;
	}
	/**
	 * @param fechacreacion the fechacreacion to set
	 */
	public void setFechacreacion(String fechacreacion) {
		this.fechacreacion = fechacreacion;
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
	 * @return the fechatermino
	 */
	public String getFechatermino() {
		return fechatermino;
	}
	/**
	 * @param fechatermino the fechatermino to set
	 */
	public void setFechatermino(String fechatermino) {
		this.fechatermino = fechatermino;
	}
	/**
	 * @return the fechaterminoreal
	 */
	public String getFechaterminoreal() {
		return fechaterminoreal;
	}
	/**
	 * @param fechaterminoreal the fechaterminoreal to set
	 */
	public void setFechaterminoreal(String fechaterminoreal) {
		this.fechaterminoreal = fechaterminoreal;
	}
	/**
	 * @param idtarea
	 * @param idproblema
	 * @param idempresa
	 * @param idorganizacion
	 * @param idgrupo
	 * @param idusuario
	 * @param resumen
	 * @param fechacreacion
	 * @param fechainicio
	 * @param fechatermino
	 * @param fechaterminoreal
	 */
	public Tarea(int idtarea, String idproblema, int idempresa, int idorganizacion, int idgrupo, int idusuario,
			String resumen, String fechacreacion, String fechainicio, String fechatermino, String fechaterminoreal) {
		super();
		this.idtarea = idtarea;
		this.idproblema = idproblema;
		this.idempresa = idempresa;
		this.idorganizacion = idorganizacion;
		this.idgrupo = idgrupo;
		this.idusuario = idusuario;
		this.resumen = resumen;
		this.fechacreacion = fechacreacion;
		this.fechainicio = fechainicio;
		this.fechatermino = fechatermino;
		this.fechaterminoreal = fechaterminoreal;
	}
	/**
	 * 
	 */
	public Tarea() {
		super();
	}
	
	
}
