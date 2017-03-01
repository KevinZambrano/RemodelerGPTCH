package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Problema;
import cl.keanzato.app.interfaces.InterfaceProblema;

public class ProblemaDao implements InterfaceProblema{

	public List<Problema> lista() throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from problema");
			ResultSet rst = consulta.executeQuery();
			List<Problema> problemas = new ArrayList<Problema>();
			while(rst.next()){
				problemas.add(parser(rst));
			}
			return problemas;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}

	private Problema parser(ResultSet rst) throws SQLException{
		Problema problema = new Problema();
		
		problema.setIdproblema(rst.getString("idproblema"));
		problema.setIdgrupo(rst.getInt("idgrupo"));
		problema.setIdusuario(rst.getInt("idusuario"));
		problema.setResumen(rst.getString("resumen"));
		problema.setIdcategoria(rst.getInt("idcategoria"));
		problema.setFechainicio(rst.getString("fechainicio"));
		problema.setFechaupdate(rst.getString("fechaupdate"));
		problema.setIdestado(rst.getInt("idestado"));
		
		return problema;
	}

	public Problema getProblema(String idproblema) throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from problema where idproblema=?");
			consulta.setString(1, idproblema);
			ResultSet rst = consulta.executeQuery();
			Problema problema = new Problema();
			while(rst.next()){
				problema = parser(rst);
			}
			return problema;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
	}
}
