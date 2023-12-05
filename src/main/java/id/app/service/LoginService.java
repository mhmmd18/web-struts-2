package id.app.service;

import java.sql.SQLException;
import java.util.Map;

import org.apache.log4j.Logger;

import id.app.model.LoginModel;
import id.app.service.LoginService;
import id.util.db.DBService;

public class LoginService extends DBService{
	
	private static final Logger LOG = Logger.getLogger(LoginService.class);
	String msg;
	
	public LoginModel authenticate(LoginModel user) throws Exception {
		LoginModel model = new LoginModel();
		con = dbEngine.getConnection();
		try {
			String userName = user.getIdUser();
			String userPass = user.getPassword();
			String sql = "select * from user_id where name_user = ? and pass_user = ?;";
			ps = con.prepareStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, userPass);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				do{
					LoginModel data = new LoginModel();
					data.setIdUser(rs.getString("NAME_USER"));
					data.setNama(rs.getString("FULL_NAME"));
					data.setRole(rs.getString("ROLE_USER"));
					setStatus("true");
					
					model.setIdUser(data.getIdUser());
					model.setNama(data.getNama());
					model.setRole(data.getRole());
					
					LOG.info("id user="+model.getIdUser()+", nama="+model.getNama()+", role="+model.getRole());
					setStatus(SUCCESS);
				}while(rs.next());
			}else {
				msg = "User / Password Salah";
				setStatus(ERROR);
				setMessage(msg);
			}
		} catch (SQLException e) {
			LOG.error(e);
			setStatus(ERROR);
		} finally {
			closeConnetion();
		}
		return model;
	}
	
	public void setSession(Map<String, Object> session, LoginModel user) {
		session.put("idUser", user.getIdUser());
		session.put("idGrup", user.getIdGroup());
		session.put("nama", user.getNama());
		session.put("role", user.getRole());
	}
	
}