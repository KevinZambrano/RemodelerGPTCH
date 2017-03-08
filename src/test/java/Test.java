import java.sql.SQLException;

import cl.keanzato.app.core.Grupo;
import cl.keanzato.app.core.Problema;
import cl.keanzato.app.dao.GrupoDao;
import cl.keanzato.app.dao.ProblemaDao;
import cl.keanzato.app.negocio.ProblemaNegocio;
import cl.keanzato.app.trans.ProblemaComplete;

public class Test {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		GrupoDao grupoDao = new  GrupoDao();
		ProblemaNegocio negocio = new ProblemaNegocio();
		ProblemaDao problemaDao = new ProblemaDao();
		
		for (ProblemaComplete i : negocio.getProblemaTrans()) {
			System.out.println(i.toString());
		}
		
		
	}

}
