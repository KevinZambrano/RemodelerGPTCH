package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Grupo;

public interface InterfaceGrupo {

	public List<Grupo> lista() throws SQLException, ClassNotFoundException;
	
	public Grupo getGrupo(int idgrupo)throws SQLException, ClassNotFoundException;
}
