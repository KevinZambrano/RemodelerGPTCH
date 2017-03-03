package cl.keanzato.app.core;

public class ComentarioTarea {

	private int idcomentariotarea;
	private int idtarea;
	private String comentario;
	/**
	 * @return the idcomentariotarea
	 */
	public int getIdcomentariotarea() {
		return idcomentariotarea;
	}
	/**
	 * @param idcomentariotarea the idcomentariotarea to set
	 */
	public void setIdcomentariotarea(int idcomentariotarea) {
		this.idcomentariotarea = idcomentariotarea;
	}
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
	 * @param idcomentariotarea
	 * @param idtarea
	 * @param comentario
	 */
	public ComentarioTarea(int idcomentariotarea, int idtarea, String comentario) {
		super();
		this.idcomentariotarea = idcomentariotarea;
		this.idtarea = idtarea;
		this.comentario = comentario;
	}
	/**
	 * 
	 */
	public ComentarioTarea() {
		super();
	}
	
	
}
