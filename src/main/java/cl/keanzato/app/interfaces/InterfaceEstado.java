package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Estado;

public interface InterfaceEstado {

	public Estado getEstado(int idestado) throws SQLException, ClassNotFoundException;
	
	public List<Estado> lista() throws SQLException, ClassNotFoundException;
}
