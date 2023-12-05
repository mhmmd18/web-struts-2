package id.app.service.setting;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import id.app.model.setting.DataUserModel;
import id.util.db.DBService;

public class DataUserService extends DBService{
	
	private static final Logger LOG = Logger.getLogger(DataUserService.class);
	
	public List<DataUserModel> GetDataUser() {
		List<DataUserModel> listData = new ArrayList<DataUserModel>();
		con = dbEngine.getConnection();
		try {
			String sql = "select * from user_id;";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				do {
					DataUserModel data = new DataUserModel();
					data.setNameUser(rs.getString("name_user"));
					data.setFullName(rs.getString("full_name"));
					data.setRoleUser(rs.getString("role_user"));
					data.setIsActive(rs.getString("is_active"));
					data.setTglActive(rs.getString("tgl_active"));
					data.setTglDeactive(rs.getString("tgl_deactive"));
					data.setTglExpire(rs.getString("tgl_expire"));
                    listData.add(data);
				} while (rs.next());
			}else {
				LOG.info(NO_DATA_FOUND);
			}
		} catch (Exception e) {
			LOG.error(e);
		} finally {
			closeConnetion();
		}
		return listData;
	}

}
