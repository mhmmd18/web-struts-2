package id.app.action.setting;

import com.opensymphony.xwork2.ActionSupport;
import id.app.model.setting.DataTiketModel;
import id.app.service.setting.DataTiketService;

import java.util.ArrayList;
import java.util.List;

public class DataTiketAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    private DataTiketService service = new DataTiketService();
    private List<DataTiketModel> listData = new ArrayList<DataTiketModel>();

    public String getDataTiket() {
        setListData(service.getDataTiket());
        return SUCCESS;
    }

    // Getter and Setter
    public List<DataTiketModel> getListData() {
        return listData;
    }

    public void setListData(List<DataTiketModel> listData) {
        this.listData = listData;
    }
}
