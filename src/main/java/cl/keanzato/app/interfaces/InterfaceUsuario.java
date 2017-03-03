package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Usuario;

public interface InterfaceUsuario {

	public Usuario getUsuario(int idusuario) throws SQLException, ClassNotFoundException;
	
	public List<Usuario> lista() throws SQLException, ClassNotFoundException;
}
