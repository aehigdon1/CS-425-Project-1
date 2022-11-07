package Project1;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;

public class Project1DAO {
    
    private final DAOFactory daoFactory;
    
    private final String QUERY_CURRENCY_LIST = "SELECT * FROM currency ORDER BY description";
    private final String QUERY_RATES = "SELECT * FROM rate WHERE rate_date = ?";
    private final String QUERY_USER = "SELECT * FROM `user` u";
    private String QUERY_USER_NUM = "SELECT access_count FROM user_access u";
    private final String QUERY_USER_KEY = "SELECT key FROM `user` u";
    Integer num = Integer.parseInt(QUERY_USER_NUM);
    
    
    
    Project1DAO(DAOFactory dao) {
        this.daoFactory = dao;
    }


    public String getCurrencyListAsHTML() {
        
        StringBuilder s = new StringBuilder();

        Connection conn = daoFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            ps = conn.prepareStatement(QUERY_CURRENCY_LIST);
            
            boolean hasresults = ps.execute();

            if (hasresults) {

                rs = ps.getResultSet();
                
                s.append("<select name=\"currency_code\" id=\"currency_code\">");
                
                s.append("<option selected value=\"0\">(please select)</option>");
                
                while (rs.next()) {
                    
                    String id = rs.getString("id");
                    String description = rs.getString("description");
                    
                    s.append("<option value=\"").append(id).append("\">");
                    s.append(description);
                    s.append("</option>");
                                        
                }
                
                s.append("</select>");

            }

        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {

            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (ps != null) {
                try {
                    ps.close();
                    ps = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }

        }
        
        return s.toString();
    }
    
    public String getRatesAsJSON(String rate_date) {
        
        JSONObject r = fetchNewRates("2022-11-04");
        
        JSONObject newRates = (JSONObject)r.get("rates");
        
        Iterator iterator = newRates.keySet().iterator();

        while (iterator.hasNext()) {
                
            String currencyid = (String) iterator.next();
            BigDecimal rate = new BigDecimal(newRates.get(currencyid).toString());

            System.err.println(currencyid + ": " + rate);

        }
        
        JSONObject json = new JSONObject();
        
        Connection conn = daoFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            ps = conn.prepareStatement(QUERY_RATES);
            ps.setString(1, rate_date);
            
            boolean hasresults = ps.execute();

            if (hasresults) {
                
                rs = ps.getResultSet();
                
                json.put("date", rate_date);
                json.put("success", true);
                
                JSONObject rates = new JSONObject();
                
                while (rs.next()) {
                    
                    String currencyid = rs.getString("currencyid");
                    BigDecimal rate = new BigDecimal(rs.getString("rate"));
                    
                    rates.put(currencyid, rate);
                                        
                }
                
                json.put("rates", rates);

            }

        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {

            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (ps != null) {
                try {
                    ps.close();
                    ps = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }

        }
        
        return JSONValue.toJSONString(json);
        
    }
    
    private JSONObject fetchNewRates(String date) {
        
        String uri = "https://testbed.jaysnellen.com:8443/JSUExchangeRatesServer/rates?date=" + date;
        JSONObject jsonResponse = null;
        
        try {
            
            URL url = new URL(uri);
            HttpURLConnection connection = (HttpURLConnection)url.openConnection();
            
            connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            connection.setRequestProperty("Accept", "application/json; charset=UTF-8");
            connection.setRequestMethod("GET");
            
            int responseCode = connection.getResponseCode();
            
            if (responseCode == HttpURLConnection.HTTP_OK) {
                
                InputStreamReader in = new InputStreamReader(connection.getInputStream());
                BufferedReader reader = new BufferedReader(in);
                String response = reader.readLine();
                JSONParser parser = new JSONParser();
                jsonResponse = (JSONObject)parser.parse(response);
                
            }
            
            connection.disconnect();
            
        }
        catch (Exception e) { e.printStackTrace(); }
        
        return jsonResponse;
        
    }

    public String checkNumberofRequests() {
        
        JSONObject json = new JSONObject();


        Connection conn = daoFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            ps = conn.prepareStatement(QUERY_USER);
            
            boolean hasresults = ps.execute();

            if (hasresults) {

                rs = ps.getResultSet();
    
                String id = rs.getString("access_count");

                num++;  
            }
            else if(num >= 10){
                System.err.println("You have exceeded the maximum number of requests per day.");
                json.put("success", false);
            }
            
            /*else if(!QUERY_USER_KEY){
                System.err.println("This API requires a valid access key.");
                json.put("success", false);
            }
            */
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {

            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (ps != null) {
                try {
                    ps.close();
                    ps = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                }
                catch (Exception e) { e.printStackTrace(); }
            }

        }
        
        return JSONValue.toJSONString(json);
    }
    
}
