package id.app.action.setting;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import id.app.model.setting.DataProvinsiModel;
import id.app.service.setting.DataProvinsiService;

public class DataProvinsiAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    DataProvinsiService service = new DataProvinsiService();
    private List<DataProvinsiModel> listData = new ArrayList<DataProvinsiModel>();

    public String GetDataProvinsi() {
        setListData(service.GetDataProvinsi());
        return SUCCESS;
    }

    // Getter Setter
    public List<DataProvinsiModel> getListData() {
        return listData;
    }

    public void setListData(List<DataProvinsiModel> listData) {
        this.listData = listData;
    }
}
