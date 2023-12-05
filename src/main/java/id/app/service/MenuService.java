package id.app.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;

import id.app.model.MenuModel;
import id.util.db.DBService;

public class MenuService extends DBService{
	
	private static final Logger LOG=Logger.getLogger(MenuService.class);
	
	public List<MenuModel> getMenu(){
		List<MenuModel> list = new ArrayList<MenuModel>();
		con = dbEngine.getConnection();
		try {
			Map<String, Object> session = ActionContext.getContext().getSession();
			String role = (String) session.get("role");
			
			String sql = "select 1 as level, a.nama_menu, a.id_menu as id_submenu, a.icon_menu as icon, null as link "+
						 "from master_menu a, master_submenu b, master_mapping_role c "+
						 "where a.id_menu = b.id_menu and b.id_submenu = c.id_submenu and c.kode_role = ? "+
						 "union "+
						 "select 2 as level, a.nama_submenu as nama_menu, a.id_submenu, null as icon, a.link_menu as link "+
						 "from master_submenu a, master_mapping_role b where a.id_submenu = b.id_submenu and b.kode_role = ? "+
						 "order by id_submenu;";
			ps = con.prepareStatement(sql);
			ps.setString(1, role);
			ps.setString(2, role);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				do {
					MenuModel data = new MenuModel();
					data.setLevel(rs.getInt("level"));
					data.setNamaMenu(rs.getString("nama_menu"));
					data.setIdSubMenu(rs.getInt("id_submenu"));
					data.setIcon(rs.getString("icon"));
					data.setLink(rs.getString("link"));
					list.add(data);
				}while(rs.next());
			}else {
				LOG.info(NO_DATA_FOUND);
			}
		} catch (Exception e) {
			LOG.error(e);
		} finally {
			closeConnetion();
		}
		return list;
	}
	
	public boolean isRoleAuthenticated(String action, String role) {
		boolean isAuthenticated = false;
		con = dbEngine.getConnection();
		try {
			String sql = "SELECT b.kode_role, a.nama_submenu, a.link_menu "+
						 "FROM master_submenu a, master_mapping_role b "+
						 "WHERE a.id_submenu = b.id_submenu "+
						 "AND b.kode_role = ? "+
						 "AND link_menu LIKE ?;";
			ps = con.prepareStatement(sql);
			ps.setString(1, role);
			ps.setString(2, "%"+action);
			rs = ps.executeQuery();

			if(rs.next()) {
				isAuthenticated = true;
			}else {
				isAuthenticated = false;
			}
		} catch (Exception e) {
			LOG.info(e);
		}
		return isAuthenticated;
	}

}