package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Place;

public class PlaceDAO {
	
	private String url = "jdbc:mysql://localhost:3306/servletproj";
    private String user = "root";
    private String pass = "shailesh@12";
    
    public Place getPlaceByName(String name)
    {
    	Place place = null;
    	
    	String query = "select * from places where name = ?";
    	
    	try (Connection con = DriverManager.getConnection(url, user, pass);
    			PreparedStatement ps = con.prepareStatement(query))
    	{
    		ps.setString(1, name);
    		ResultSet rs = ps.executeQuery();
    		
    		if(rs.next())
    		{
    			place = new Place();
    			place.setName(rs.getString("name"));
    			place.setDescription(rs.getString("description"));
    			place.setImg1(rs.getString("img1"));
    			place.setImg2(rs.getString("img2"));
    			place.setImg3(rs.getString("img3"));
    			place.setImg4(rs.getString("img4"));
    			place.setImg5(rs.getString("img5"));
    			
    		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return place;
    }
}	
