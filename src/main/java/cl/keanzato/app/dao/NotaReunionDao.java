package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.NotaReunion;
import cl.keanzato.app.interfaces.InterfaceNotaReunion;

public class NotaReunionDao implements InterfaceNotaReunion {

	public List<NotaReunion> lista() throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from notareunion");
			ResultSet rst = consulta.executeQuery();
			List<NotaReunion> notas = new ArrayList<NotaReunion>();
			while (rst.next()) {
				notas.add(parser(rst));
			}
			return notas;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	public boolean agregar(NotaReunion notareunion) throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection()
					.prepareStatement("insert into notareunion values(null,?,?,?,?)");
			consulta.setString(1, notareunion.getIdProblema());
			consulta.setString(2, notareunion.getTitulo());
			consulta.setString(3, notareunion.getNota());
			consulta.setString(4, notareunion.getFechaReunion());
			consulta.executeUpdate();
			return true;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return false;
		}
	}

	private NotaReunion parser(ResultSet rst) throws SQLException {
		NotaReunion notaReunion = new NotaReunion();

		notaReunion.setIdNota(rst.getLong("id_notareunion"));
		notaReunion.setIdProblema(rst.getString("id_problema"));
		notaReunion.setTitulo(rst.getString("titulo"));
		notaReunion.setNota(rst.getString("nota"));
		notaReunion.setFechaReunion(rst.getString("fecha_reunion"));

		return notaReunion;
	}
}
