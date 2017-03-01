package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Estado;
import cl.keanzato.app.interfaces.InterfaceEstado;

public class EstadoDao implements InterfaceEstado{

	public Estado getEstado(int idestado) throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from estado where idestado=?");
			consulta.setInt(1, idestado);
			ResultSet rst = consulta.executeQuery();
			Estado estado = new Estado();
			while(rst.next()){
				estado = parser(rst);
			}
			return estado;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
		
	}
	
	private Estado parser(ResultSet rst) throws SQLException{
		Estado estado = new Estado();
		
		estado.setIdestado(rst.getInt("idestado"));
		estado.setNombre(rst.getString("nombre"));
		
		return estado;
	}
}
