package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.ComentarioTarea;

public interface InterfaceComentarioTarea {

	public List<ComentarioTarea> lista() throws SQLException, ClassNotFoundException;

	public ComentarioTarea getComentarioTarea(int idcomentariotarea) throws SQLException, ClassNotFoundException;
}
