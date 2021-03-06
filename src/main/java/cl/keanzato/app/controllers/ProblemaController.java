package cl.keanzato.app.controllers;

import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import cl.keanzato.app.core.Problema;
import cl.keanzato.app.dao.ProblemaDao;
import cl.keanzato.app.negocio.ProblemaNegocio;
import cl.keanzato.app.trans.ProblemaComplete;

@Path("problemas")
public class ProblemaController {

	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public List<ProblemaComplete> problemas() throws ClassNotFoundException {
		try {
			ProblemaNegocio problemaNegocio = new ProblemaNegocio();
			return problemaNegocio.getProblemaTrans();
		} catch (Exception ex) {
			Logger.getLogger(GrupoController.class.getName()).log(Level.SEVERE, null, ex);
			throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
		}
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/problema")
	public Response agregarProblema(Problema problema) throws ClassNotFoundException {
		try {
			ProblemaDao problemaDao = new ProblemaDao();
			problemaDao.agregar(problema);
			return Response.status(Response.Status.OK).build();
		} catch (SQLException ex) {
			Logger.getLogger(ProblemaController.class.getName()).log(Level.SEVERE, null, ex);
			throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/cantidad")
	public int cantidadProblemas() throws ClassNotFoundException{
		try{
			ProblemaNegocio problemaNegocio = new ProblemaNegocio();
			return problemaNegocio.cantidadProblemas();
		} catch (SQLException ex) {
			Logger.getLogger(ProblemaController.class.getName()).log(Level.SEVERE, null, ex);
			throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
		}
	}
}
