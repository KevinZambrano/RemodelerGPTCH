package cl.keanzato.app.interfaces;

import java.sql.SQLException;

import cl.keanzato.app.core.Estado;

public interface InterfaceEstado {

	public Estado getEstado(int idestado) throws SQLException, ClassNotFoundException;
}
