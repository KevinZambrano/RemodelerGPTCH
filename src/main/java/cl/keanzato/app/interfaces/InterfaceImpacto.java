package cl.keanzato.app.interfaces;

import java.sql.SQLException;
import java.util.List;

import cl.keanzato.app.core.Impacto;

public interface InterfaceImpacto {

	public List<Impacto> lista() throws SQLException, ClassNotFoundException;
	
	public Impacto getImpacto(int idimpacto) throws SQLException, ClassNotFoundException;
	
}
