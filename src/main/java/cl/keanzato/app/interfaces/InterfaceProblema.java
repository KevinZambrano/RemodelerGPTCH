package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Problema;

public interface InterfaceProblema {

	public List<Problema> lista() throws SQLException, ClassNotFoundException;
	
	public Problema getProblema(String idproblema) throws SQLException, ClassNotFoundException;
}
