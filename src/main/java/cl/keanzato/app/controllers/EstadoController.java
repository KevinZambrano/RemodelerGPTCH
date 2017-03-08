package cl.keanzato.app.controllers;

import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import cl.keanzato.app.core.Estado;
import cl.keanzato.app.dao.EstadoDao;

@Path("estados")
public class EstadoController {

	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public List<Estado> estados() throws ClassNotFoundException{
		try{
			EstadoDao estadoDao = new EstadoDao();
			return estadoDao.lista();
		} catch (SQLException ex) {
            Logger.getLogger(EstadoController.class.getName()).log(Level.SEVERE, null, ex);
            throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
        }
	}
}
