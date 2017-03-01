package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Grupo;
import cl.keanzato.app.interfaces.InterfaceGrupo;

public class GrupoDao implements InterfaceGrupo{

	public List<Grupo> lista() throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from grupo");
			ResultSet rst = consulta.executeQuery();
			List<Grupo> grupos = new ArrayList<Grupo>();
			while(rst.next()){
				grupos.add(parser(rst));
			}
			
			return grupos;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}

	private Grupo parser(ResultSet rst) throws SQLException{
		Grupo grupo = new Grupo();
		
		grupo.setIdgrupo(rst.getInt("idgrupo"));
		grupo.setNombregrupo(rst.getString("nombregrupo"));
		
		return grupo;
	}

	public Grupo getGrupo(int idgrupo) throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from grupo where idgrupo = ?");
			consulta.setInt(1, idgrupo);
			ResultSet rst = consulta.executeQuery();
			Grupo grupo = new Grupo();
			while(rst.next()){
				grupo=parser(rst);
			}
			
			return grupo;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
	}
}
