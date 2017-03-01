package cl.keanzato.app.interfaces;

import java.sql.SQLException;

import cl.keanzato.app.core.Usuario;

public interface InterfaceUsuario {

	public Usuario getUsuario(int idusuario) throws SQLException, ClassNotFoundException;
}
