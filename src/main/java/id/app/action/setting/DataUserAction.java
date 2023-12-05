package id.app.action.setting;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import id.app.model.setting.DataUserModel;
import id.app.service.setting.DataUserService;

public class DataUserAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	DataUserService service = new DataUserService();
	private List<DataUserModel> listData = new ArrayList<DataUserModel>();

	public String GetDataUser() {
		setListData(service.GetDataUser());
		return SUCCESS;
	}

	// Getter Setter
	public List<DataUserModel> getListData() {
		return listData;
	}

	public void setListData(List<DataUserModel> listData) {
		this.listData = listData;
	}
	
}
