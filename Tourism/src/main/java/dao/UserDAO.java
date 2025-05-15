package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;

public class UserDAO {
	
	private String classname = "com.mysql.cj.jdbc.Driver";
	
	private String jdbcurl = "jdbc:mysql://localhost:3306/servletproj";
	
	private String username = "root";
	
	private String password = "shailesh@12";
	
	private String insert_query = "insert into users (name, email, password) values (?, ?, ?)";
	
	private String fetch_query = "select * from users where email = ? and password = ?";
	
	public UserDAO()
	{
		try
		{
			Class.forName(classname);
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public boolean register(User user)
	{
		try 
		{
			Connection con = DriverManager.getConnection(jdbcurl, username, password);
			
			PreparedStatement ps = con.prepareStatement(insert_query);
			
			ps.setString(1, user.getName());
			
			ps.setString(2, user.getEmail());
			
			ps.setString(3, user.getPassword());
			
			return ps.executeUpdate() > 0;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean validate(String email, String userpassword)
	{
		try
		{

			Connection con = DriverManager.getConnection(jdbcurl, username, password);
			
			PreparedStatement ps = con.prepareStatement(fetch_query);
			
			ps.setString(1, email);
			
			ps.setString(2, userpassword);
			
			ResultSet rs = ps.executeQuery();
			
			return rs.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
}
