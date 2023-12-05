package id.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;

import id.util.JFileStream;

public class DBEngine {
	
	private static final Logger LOG = Logger.getLogger(DBEngine.class.getName());

	JFileStream fileStream = new JFileStream("jdbc.properties");
	Properties properties = fileStream.getProperties();

	public Connection getConnection() {
		try {
			String url = properties.getProperty("url");
			String user = properties.getProperty("user");
			String password = properties.getProperty("pass");

			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, user, password);

			return connection;
		} catch (ClassNotFoundException | SQLException e) {
			LOG.error(e);
			e.printStackTrace();
		}
		return null;
	}
}
