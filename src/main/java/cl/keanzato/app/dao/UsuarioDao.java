package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Usuario;
import cl.keanzato.app.interfaces.InterfaceUsuario;

public class UsuarioDao implements InterfaceUsuario{

	public Usuario getUsuario(int idusuario) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Usuario> lista() throws SQLException, ClassNotFoundException {
		try{
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from usuario");
			ResultSet rst = consulta.executeQuery();
			List<Usuario> usuarios = new ArrayList<Usuario>();
			while(rst.next()){
				usuarios.add(parser(rst));
			}
			return usuarios;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			return null;
		}
		
	}

	private Usuario parser(ResultSet rst) throws SQLException {
		Usuario usuario = new Usuario();
		
		usuario.setIdusuario(rst.getInt("idusuario"));
		usuario.setIdgrupo(rst.getInt("idgrupo"));
		usuario.setNombre(rst.getString("nombre"));
		usuario.setApellidopaterno(rst.getString("apellidopaterno"));
		usuario.setApellidomaterno(rst.getString("apellidomaterno"));
		
		return usuario;
	}

}
