package cl.keanzato.app.core;

public class ComentarioProblema {

	private int idcomentarioproblema;
	private String idproblema;
	private String comentario;
	/**
	 * @return the idcomentarioproblema
	 */
	public int getIdcomentarioproblema() {
		return idcomentarioproblema;
	}
	/**
	 * @param idcomentarioproblema the idcomentarioproblema to set
	 */
	public void setIdcomentarioproblema(int idcomentarioproblema) {
		this.idcomentarioproblema = idcomentarioproblema;
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
	 * @return the comentario
	 */
	public String getComentario() {
		return comentario;
	}
	/**
	 * @param comentario the comentario to set
	 */
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	/**
	 * @param idcomentarioproblema
	 * @param idproblema
	 * @param comentario
	 */
	public ComentarioProblema(int idcomentarioproblema, String idproblema, String comentario) {
		super();
		this.idcomentarioproblema = idcomentarioproblema;
		this.idproblema = idproblema;
		this.comentario = comentario;
	}
	/**
	 * 
	 */
	public ComentarioProblema() {
		super();
	}
	
	
}
