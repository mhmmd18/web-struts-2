package id.app.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import id.app.model.MenuModel;
import id.app.service.MenuService;

public class MenuAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	private List<MenuModel> listMenu = new ArrayList<MenuModel>();
	private boolean isRoleAuthenticated;

	public String loadMenu() {
		MenuService service = new MenuService();
		setListMenu(service.getMenu());
		return SUCCESS;
	}

	public boolean roleAuthenticated(String action, String role) {
		MenuService service = new MenuService();
		setRoleAuthenticated(service.isRoleAuthenticated(action, role));
		return isRoleAuthenticated;
	}

	//Getter Setter
	public List<MenuModel> getListMenu() {
		return listMenu;
	}

	public void setListMenu(List<MenuModel> listMenu) {
		this.listMenu = listMenu;
	}

	public boolean isRoleAuthenticated() {
		return isRoleAuthenticated;
	}

	public void setRoleAuthenticated(boolean isRoleAuthenticated) {
		this.isRoleAuthenticated = isRoleAuthenticated;
	}
	
}