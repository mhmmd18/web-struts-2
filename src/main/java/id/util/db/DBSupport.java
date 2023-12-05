package id.util.db;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public abstract class DBSupport implements ActionType, Result {

	protected DBEngine dbEngine;
	protected Connection con;
	protected Statement st;
	protected PreparedStatement ps;
	protected CallableStatement cs;
	protected ResultSet rs;

}
