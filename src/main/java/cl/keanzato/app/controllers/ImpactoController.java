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

import cl.keanzato.app.core.Impacto;
import cl.keanzato.app.dao.ImpactoDao;

@Path("impacto")
public class ImpactoController {

	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/")
	public List<Impacto> listaImpactos() throws ClassNotFoundException{
		try{
			ImpactoDao impactoDao = new ImpactoDao();
			return impactoDao.lista();
		} catch (SQLException ex) {
            Logger.getLogger(ImpactoController.class.getName()).log(Level.SEVERE, null, ex);
            throw new WebApplicationException(Response.Status.INTERNAL_SERVER_ERROR);
        }
	}
}
