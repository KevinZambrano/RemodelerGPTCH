package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Prioridad;
import cl.keanzato.app.interfaces.InterfacePrioridad;

public class PrioridadDao implements InterfacePrioridad{

	public List<Prioridad> lista() throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from prioridad");
			ResultSet rst = consulta.executeQuery();
			List<Prioridad> prioridades = new ArrayList<Prioridad>();
			while(rst.next()){
				prioridades.add(parser(rst));
			}
			return prioridades;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
	}

	public Prioridad getPrioridad(int idprioridad) throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from prioridad where idprioridad = ?");
			consulta.setInt(1, idprioridad);
			ResultSet rst = consulta.executeQuery();
			Prioridad prioridad = new Prioridad();
			while(rst.next()){
				prioridad = parser(rst);
			}
			return prioridad;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
		
	}

	private Prioridad parser(ResultSet rst) throws SQLException{
		
		Prioridad prioridad = new Prioridad();
		
		prioridad.setIdprioridad(rst.getInt("idprioridad"));
		prioridad.setNombre(rst.getString("nombre"));
		
		return prioridad;
	}
	
}
