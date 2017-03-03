package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.ComentarioTarea;
import cl.keanzato.app.interfaces.InterfaceComentarioTarea;

public class ComentarioTareaDao implements InterfaceComentarioTarea {

	public List<ComentarioTarea> lista() throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from comentariotarea");
			ResultSet rst = consulta.executeQuery();
			List<ComentarioTarea> coms = new ArrayList<ComentarioTarea>();
			while (rst.next()) {
				coms.add(parser(rst));
			}
			return coms;
		} catch (Exception ex) {
			return null;
		}
	}

	public ComentarioTarea getComentarioTarea(int idcomentariotarea) throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection()
					.prepareStatement("select * from comentariotarea where idcomentariotarea = ?");
			consulta.setInt(1, idcomentariotarea);
			ResultSet rst = consulta.executeQuery();
			ComentarioTarea com = new ComentarioTarea();
			while (rst.next()) {
				com = parser(rst);
			}
			return com;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}

	}

	private ComentarioTarea parser(ResultSet rst) throws SQLException {
		ComentarioTarea com = new ComentarioTarea();

		com.setIdcomentariotarea(rst.getInt("idcomentariotarea"));
		com.setIdtarea(rst.getInt("idtarea"));
		com.setComentario(rst.getString("comentario"));

		return com;
	}
}
