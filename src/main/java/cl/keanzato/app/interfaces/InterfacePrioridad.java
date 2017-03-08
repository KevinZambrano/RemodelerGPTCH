package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Prioridad;

public interface InterfacePrioridad {

	public List<Prioridad> lista() throws SQLException, ClassNotFoundException;
	
	public Prioridad getPrioridad(int idprioridad) throws SQLException, ClassNotFoundException;
}
