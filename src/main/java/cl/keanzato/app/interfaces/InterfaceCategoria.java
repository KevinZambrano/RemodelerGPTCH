package cl.keanzato.app.interfaces;

import java.sql.SQLException;

import cl.keanzato.app.core.Categoria;

public interface InterfaceCategoria {

	public Categoria getCategoria() throws SQLException, ClassNotFoundException;
	
}
