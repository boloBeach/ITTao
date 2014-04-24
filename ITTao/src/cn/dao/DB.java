package cn.dao;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DB {

	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://192.168.1.230:3306/videodb?useUnicode=true&characterEncoding=UTF-8";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "root";

	private static Connection getConn() throws ClassNotFoundException,
			SQLException {
		Class.forName(DB_DRIVER);
		return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	}

	public static int executeUpdate(final String sql) throws SQLException,
			ClassNotFoundException {
		int result = -1;
		Statement stmt = null;
		Connection conn = null;
		try {
			conn = getConn();
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (ClassNotFoundException e) {
			throw e;
		} catch (SQLException e) {
			throw e;
		} finally {
			close(conn, stmt, null);
		}
		return result;
	}

	public static int executeUpdate( String sql,Object[] params) throws SQLException,
			ClassNotFoundException {
		int result = -1;
		PreparedStatement stmt = null;
		Connection conn = null;
		try {
			conn = getConn();
			stmt = conn.prepareStatement(sql);
			System.out.println(sql+"|"+params.length);
			if (params != null) {
				int i = 0;
				for (Object obj : params) {
					stmt.setObject(i + 1, obj);
					i++;
				}
			}
			result = stmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			throw e;
		} catch (SQLException e) {
			throw e;
		} finally {
			close(conn, stmt, null);
		}
		return result;
	}

	public static List<HashMap<String, Object>> ExecuteQuery(final String sql,
			Object[] params) throws ClassNotFoundException, SQLException {
		List<HashMap<String, Object>> datas = null;
		PreparedStatement sta = null;
		ResultSet rs = null;
		Connection conn = getConn();
		try {
			sta = conn.prepareStatement(sql);
			if (params != null) {
				int i = 0;
				for (Object obj : params) {
					sta.setObject(i + 1, obj);
					i++;
				}
			}
			rs = sta.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int recount = rsmd.getColumnCount();
			String[] colLabels = new String[recount];
			for (int i = 0; i < recount; i++) {
				colLabels[i] = rsmd.getColumnLabel(i + 1);
			}
			datas = new ArrayList<HashMap<String, Object>>();
			while (rs.next()) {
				HashMap<String, Object> data = new HashMap<String, Object>();
				for (int i = 0; i < colLabels.length; i++) {
					data.put(colLabels[i], rs.getObject(colLabels[i]));
				}
				datas.add(data);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			close(conn, sta, rs);
		}
		return datas;
	}

	private static void close(final Connection conn, final Statement stmt,
			final ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		
		}
	}
	
	public   static void main(String[] args){
		try {
			System.out.println(new String("123".getBytes("UTF-8"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
