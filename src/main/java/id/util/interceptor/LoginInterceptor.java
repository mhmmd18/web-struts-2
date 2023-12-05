package id.util.interceptor;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import id.app.action.MenuAction;
import id.util.interceptor.LoginInterceptor;

public class LoginInterceptor extends AbstractInterceptor{
	
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(LoginInterceptor.class);

	private String action = "";

	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();

		if (session != null && session.get("idUser") != null) {
			LOG.info(action);
			MenuAction menuAction = new MenuAction();
			boolean isMenuAuthenticated = menuAction.roleAuthenticated(action, session.get("role").toString());
			if(isMenuAuthenticated) {
				return invocation.invoke();
			}else {
				LOG.warn("Role isnt Authenticated");
				return "dashboard";
			}
		} else {
			LOG.warn("Session Expired");
			return "login";
		}
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
}
