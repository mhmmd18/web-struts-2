package id.app.action;

import java.security.MessageDigest;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;
//import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.commons.net.util.Base64;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import id.app.model.LoginModel;
import id.app.service.LoginService;

public class LoginAction extends ActionSupport implements ModelDriven<LoginModel>, SessionAware {
	
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(LoginAction.class);	
	
	private LoginModel user = new LoginModel();
	private LoginModel userLogin = new LoginModel();
	private Map<String, Object> session;

	@Override
	public String execute() throws Exception {
		String ps = user.getPassword();
		
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] encryptedPassword = md.digest(ps.getBytes());
		byte[] encodedBytes = Base64.encodeBase64(encryptedPassword);
		String Str2 = new String(encodedBytes);
		user.setPassword(Str2.replaceAll("[$=]",""));		
		
		LoginService loginService = new LoginService();
		userLogin = loginService.authenticate(user);
		String status = loginService.getStatus();
		if (status.equals(SUCCESS)){
			loginService.setSession(session, userLogin);
			return SUCCESS;
		}else{
			LOG.info(loginService.getStatus()+"|"+loginService.getMessage());
			addActionError(loginService.getMessage());
			return INPUT;					
		}
	}
	
	public String logoutApp(){
		getSession().clear();
		return "success";
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}

	public LoginModel getModel() {
		return user;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	
}