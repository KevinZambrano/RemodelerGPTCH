package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.ComentarioProblema;
import cl.keanzato.app.interfaces.InterfaceComentarioProblema;

public class ComentarioProblemaDao implements InterfaceComentarioProblema {

	public List<ComentarioProblema> lista() throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from comentarioproblema");
			ResultSet rst = consulta.executeQuery();
			List<ComentarioProblema> coms = new ArrayList<ComentarioProblema>();
			while (rst.next()) {
				coms.add(parser(rst));
			}
			return coms;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	public ComentarioProblema getComentarioProblema(int idcomentarioproblema)
			throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection()
					.prepareStatement("select * from comentarioprolema where idcomentarioproblema=?");
			consulta.setInt(1, idcomentarioproblema);
			ResultSet rst = consulta.executeQuery();
			ComentarioProblema com = new ComentarioProblema();
			while (rst.next()) {
				com = parser(rst);
			}
			return com;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	public ComentarioProblema parser(ResultSet rst) throws SQLException {
		ComentarioProblema com = new ComentarioProblema();

		com.setIdcomentarioproblema(rst.getInt("idcomentarioproblema"));
		com.setIdproblema(rst.getString("idproblema"));
		com.setComentario(rst.getString("comentario"));

		return com;
	}

}
