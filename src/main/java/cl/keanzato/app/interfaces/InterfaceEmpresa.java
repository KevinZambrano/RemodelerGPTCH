package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Empresa;

public interface InterfaceEmpresa {

	public List<Empresa> lista() throws SQLException, ClassNotFoundException;
	
	public Empresa getEmpresa(int idempresa) throws SQLException, ClassNotFoundException;
	
}
