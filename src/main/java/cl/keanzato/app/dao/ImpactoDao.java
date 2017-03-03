package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Impacto;
import cl.keanzato.app.interfaces.InterfaceImpacto;

public class ImpactoDao implements InterfaceImpacto{

	public List<Impacto> lista() throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from impacto");
			ResultSet rst = consulta.executeQuery();
			List<Impacto> impactos = new ArrayList<Impacto>();
			while(rst.next()){
				impactos.add(parser(rst));
			}
			return impactos;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
		
	}

	public Impacto getImpacto(int idimpacto) throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from impacto where idimpacto = ?");
			consulta.setInt(1, idimpacto);
			ResultSet rst = consulta.executeQuery();
			Impacto impacto = new Impacto();
			while(rst.next()){
				impacto = parser(rst);
			}
			return impacto;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
	}

	private Impacto parser(ResultSet rst) throws SQLException{
		Impacto impacto = new Impacto();
		
		impacto.setIdimpacto(rst.getInt("idimpacto"));
		impacto.setNombre(rst.getString("nombre"));
		
		return impacto;
	}
}
