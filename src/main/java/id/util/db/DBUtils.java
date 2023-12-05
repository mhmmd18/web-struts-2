package id.util.db;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import org.apache.log4j.Logger;

public class DBUtils {

	private static Logger LOG = Logger.getLogger(DBUtils.class.getName());

	public static String spQuery(String spName, Map<String, String> param) {
		StringBuffer sb = new StringBuffer();

		sb.append("{call ");
		sb.append(spName);

		if (param != null && param.size() > 0) {
			sb.append("(");
			for (int i = 0; i < param.size(); i++) {
				sb.append("?,");
			}
			sb.setLength(sb.length() - 1);
			sb.append(")}");
		} else {
			sb.append("}");
		}

		return sb.toString();
	}

	public static void close(Object... objects) {
		for (Object object : objects) {
			close(object);
		}
	}

	private static void close(Object object) {
		try {
			if (object instanceof ResultSet)
				((ResultSet) object).close();
			else if (object instanceof PreparedStatement)
				((PreparedStatement) object).close();
			else if (object instanceof CallableStatement)
				((CallableStatement) object).close();
			else if (object instanceof Statement)
				((Statement) object).close();
			else if (object instanceof Connection)
				((Connection) object).close();
		} catch (SQLException e) {
			LOG.error(e);
		}
	}

}
