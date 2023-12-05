package id.app.service.setting;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import id.app.model.setting.DataProvinsiModel;
import id.util.db.DBService;

public class DataProvinsiService extends DBService {
    private static final Logger LOG = Logger.getLogger(DataProvinsiService.class);

    public List<DataProvinsiModel> GetDataProvinsi() {
        List<DataProvinsiModel> listData = new ArrayList<DataProvinsiModel>();
        con = dbEngine.getConnection();
        try {
            String sql = "select * from master_provinsi;";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                do {
                    DataProvinsiModel data = new DataProvinsiModel();
                    data.setId(rs.getInt("id"));
                    data.setName(rs.getString("nama"));
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
