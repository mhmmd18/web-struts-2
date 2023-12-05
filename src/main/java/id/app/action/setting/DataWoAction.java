package id.app.action.setting;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import id.app.model.setting.DataWoModel;
import id.app.service.setting.DataWoService;

public class DataWoAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    DataWoService service = new DataWoService();
    private List<DataWoModel> listData = new ArrayList<DataWoModel>();

    public String GetDataWo() {
        setListData(service.GetDataWo());
        return SUCCESS;
    }

    // Getter Setter
    public List<DataWoModel> getListData() {
        return listData;
    }

    public void setListData(List<DataWoModel> listData) {
        this.listData = listData;
    }
}
