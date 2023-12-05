package id.app.service.setting;

import id.app.model.setting.DataTiketModel;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class DataTiketService {
    private static final String API_URL = "https://project-aml-backend-production-68d7.up.railway.app/api/v1/ticket";

    public List<DataTiketModel> getDataTiket() {
        List<DataTiketModel> listData = new ArrayList<>();
        HttpURLConnection connection = null;

        try {
            URL url = new URL(API_URL);
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            int responseCode = connection.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;

                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }

                reader.close();

                JSONArray jsonArray = new JSONArray(response.toString());

                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    DataTiketModel data = new DataTiketModel();

                    data.setId(jsonObject.getInt("id"));
                    data.setFullName(jsonObject.getString("full_name"));
                    data.setNik(jsonObject.getString("nik"));
                    data.setNkk(jsonObject.getString("nkk"));
                    data.setIdPel(jsonObject.getString("id_pel"));
                    data.setNoHp(jsonObject.getString("no_hp"));
                    data.setAlamat(jsonObject.getString("alamat"));
                    data.setLokasi(jsonObject.getString("lokasi"));
                    data.setValidasi(jsonObject.getString("validasi"));
                    data.setBuktiKtp(jsonObject.getString("bukti_ktp"));
                    data.setBuktiMeter(jsonObject.getString("bukti_meter"));

                    listData.add(data);
                }
            } else {
                throw new IOException("HTTP request failed with response code: " + responseCode);
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.err.println("Error retrieving data from API: " + e.getMessage());
        } catch (JSONException e) {
            e.printStackTrace();
            System.err.println("Error parsing JSON data: " + e.getMessage());
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }

        return listData;
    }
}
