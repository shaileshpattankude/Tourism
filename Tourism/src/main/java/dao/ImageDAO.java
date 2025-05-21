package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;


public class ImageDAO {
	
	private String url = "jdbc:mysql://localhost:3306/servletproj";
    private String user = "root";
    private String pass = "shailesh@12";

    public HashMap<String, String> getAllImages() {
        HashMap<String, String> map = new HashMap<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            String query = "SELECT name, path FROM images";
            //String query = "Select name, img1 from places";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                map.put(rs.getString("name"), rs.getString("path"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
