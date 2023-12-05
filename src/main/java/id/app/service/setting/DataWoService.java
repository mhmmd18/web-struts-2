package id.app.service.setting;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import id.app.model.setting.DataWoModel;
import id.util.db.DBService;

public class DataWoService extends DBService {
    private static final Logger LOG = Logger.getLogger(DataWoService.class);

    public List<DataWoModel> GetDataWo() {
        List<DataWoModel> listData = new ArrayList<DataWoModel>();
        con = dbEngine.getConnection();
        try {
            String sql = "select * from data_wo;";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                do {
                    DataWoModel data = new DataWoModel();
                    data.setId(rs.getInt("id"));
                    data.setName(rs.getString("nama"));
                    data.setKdProv(rs.getString("kd_prov"));
                    listData.add(data);
                } while (rs.next());
            } else {
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
