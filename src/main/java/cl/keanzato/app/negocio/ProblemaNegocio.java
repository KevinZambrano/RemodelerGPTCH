package cl.keanzato.app.negocio;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.core.Problema;
import cl.keanzato.app.dao.EstadoDao;
import cl.keanzato.app.dao.GrupoDao;
import cl.keanzato.app.dao.ImpactoDao;
import cl.keanzato.app.dao.PrioridadDao;
import cl.keanzato.app.dao.ProblemaDao;
import cl.keanzato.app.dao.UsuarioDao;
import cl.keanzato.app.trans.ProblemaComplete;

public class ProblemaNegocio {

	public List<ProblemaComplete> getProblemaTrans(){
		try{
			ProblemaDao problemaDao = new ProblemaDao();
			GrupoDao grupoDao = new GrupoDao();
			UsuarioDao usuarioDao = new UsuarioDao();
			EstadoDao estadoDao = new EstadoDao();
			PrioridadDao prioridadDao = new PrioridadDao();
			ImpactoDao impactoDao = new ImpactoDao();
			List<ProblemaComplete> problematrans = new ArrayList<ProblemaComplete>();
			
			for(Problema p : problemaDao.lista()){
				problematrans.add(new ProblemaComplete(p.getIdproblema(),
						grupoDao.getGrupo(p.getIdgrupo()).getNombregrupo(),
						usuarioDao.getUsuario(p.getIdusuario()).getNombre()
						+" "+usuarioDao.getUsuario(p.getIdusuario()).getApellidopaterno()
						+" "+usuarioDao.getUsuario(p.getIdusuario()).getApellidomaterno(),
						p.getResumen(),
						p.getFechainicio(),
						p.getFechaupdate(),
						estadoDao.getEstado(p.getIdestado()).getNombre(),
						prioridadDao.getPrioridad(p.getIdprioridad()).getNombre(),
						impactoDao.getImpacto(p.getIdimpacto()).getNombre()));
			}
			
			return problematrans;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
	}
	
	public int cantidadProblemas() throws ClassNotFoundException, SQLException{
		ProblemaDao problemaDao = new ProblemaDao();
		
		int suma = problemaDao.lista().size();
		
		return suma;
	}
}
