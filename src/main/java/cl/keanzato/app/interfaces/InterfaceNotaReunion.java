package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.NotaReunion;

public interface InterfaceNotaReunion {

	public List<NotaReunion> lista() throws SQLException, ClassNotFoundException;
	
	public boolean agregar(NotaReunion notareunion) throws SQLException, ClassNotFoundException;
}
