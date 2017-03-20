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

import cl.keanzato.app.core.NotaReunion;
import cl.keanzato.app.dao.NotaReunionDao;

@Path("notareunion")
public class NotaReunionController {
	
	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public List<NotaReunion> lista() throws ClassNotFoundException{
		try{
			NotaReunionDao notaReunionDao = new NotaReunionDao();
			return notaReunionDao.lista();
		} catch (SQLException ex) {
			Logger.getLogger(NotaReunionController.class.getName()).log(Level.SEVERE, null, ex);
			throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
		}
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("/agregar")
	public Response agregarComentario(NotaReunion notaReunion) throws ClassNotFoundException {
		try {
			NotaReunionDao notaReunionDao = new NotaReunionDao();
			notaReunionDao.agregar(notaReunion);
			return Response.status(Response.Status.OK).build();
		} catch (SQLException ex) {
			Logger.getLogger(NotaReunionController.class.getName()).log(Level.SEVERE, null, ex);
			throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
		}
	}
}
