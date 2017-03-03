package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.ComentarioProblema;

public interface InterfaceComentarioProblema {

	public List<ComentarioProblema> lista() throws SQLException, ClassNotFoundException;
	
	public ComentarioProblema getComentarioProblema(int idcomentarioproblema) throws SQLException, ClassNotFoundException;
}
