package id.app.action;

import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(LogoutAction.class);
	
	private Map<String, Object> session;
	
	@Override
	public String execute() throws Exception{
		String ID_USER = (String) session.get("idUser");
		session.clear();
		LOG.info("User ["+ID_USER+"] Log Out");
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	
}