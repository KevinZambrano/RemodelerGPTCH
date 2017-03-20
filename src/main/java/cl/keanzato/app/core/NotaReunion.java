package cl.keanzato.app.core;

public class NotaReunion {

	private long idNota;
	private String idProblema;
	private String titulo;
	private String nota;
	private String fechaReunion;
	/**
	 * @return the idNota
	 */
	public long getIdNota() {
		return idNota;
	}
	/**
	 * @param idNota the idNota to set
	 */
	public void setIdNota(long idNota) {
		this.idNota = idNota;
	}
	/**
	 * @return the titulo
	 */
	public String getTitulo() {
		return titulo;
	}
	/**
	 * @param titulo the titulo to set
	 */
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	/**
	 * @return the nota
	 */
	public String getNota() {
		return nota;
	}
	/**
	 * @param nota the nota to set
	 */
	public void setNota(String nota) {
		this.nota = nota;
	}
	/**
	 * @return the idProblema
	 */
	public String getIdProblema() {
		return idProblema;
	}
	/**
	 * @param idProblema the idProblema to set
	 */
	public void setIdProblema(String idProblema) {
		this.idProblema = idProblema;
	}
	/**
	 * @return the fechaReunion
	 */
	public String getFechaReunion() {
		return fechaReunion;
	}
	/**
	 * @param fechaReunion the fechaReunion to set
	 */
	public void setFechaReunion(String fechaReunion) {
		this.fechaReunion = fechaReunion;
	}
	/**
	 * @param idNota
	 * @param nota
	 * @param fechaReunion
	 */
	public NotaReunion(long idNota,String idProblema, String titulo, String nota, String fechaReunion) {
		super();
		this.idNota = idNota;
		this.idProblema = idProblema;
		this.titulo = titulo;
		this.nota = nota;
		this.fechaReunion = fechaReunion;
	}
	/**
	 * 
	 */
	public NotaReunion() {
		super();
	}
	
	
}
