package cl.keanzato.app.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.keanzato.app.conexion.ConexionDB;
import cl.keanzato.app.core.Empresa;
import cl.keanzato.app.interfaces.InterfaceEmpresa;

public class EmpresaDao implements InterfaceEmpresa {

	public List<Empresa> lista() throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from empresa");
			ResultSet rst = consulta.executeQuery();
			List<Empresa> empresas = new ArrayList<Empresa>();
			while (rst.next()) {
				empresas.add(parser(rst));
			}
			return empresas;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}

	}

	public Empresa getEmpresa(int idempresa) throws SQLException, ClassNotFoundException {
		try {
			ConexionDB conn = ConexionDB.getInstancia();
			PreparedStatement consulta = conn.getConnection().prepareStatement("select * from empresa where idempresa = ?");
			consulta.setInt(1, idempresa);
			ResultSet rst = consulta.executeQuery();
			Empresa empresa = new Empresa();
			while (rst.next()) {
				empresa = parser(rst);
			}
			return empresa;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	private Empresa parser(ResultSet rst) throws SQLException, ClassNotFoundException {
		Empresa empresa = new Empresa();
		
		empresa.setIdempresa(rst.getInt("idempresa"));
		empresa.setNombre(rst.getString("nombre"));
		
		return empresa;
	}

}
