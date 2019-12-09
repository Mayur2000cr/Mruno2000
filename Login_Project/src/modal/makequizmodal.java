package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.makequizbean;

public class makequizmodal {
	
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root", "");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	public static int save(makequizbean s)
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into quizinfo(subject) values(?)");
			ps.setString(1,s.getSubject());
			status=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			return status;
		}
		return status;
	}
	public static makequizbean getRecordById(String subject)
	{
		   makequizbean u =null;
		Connection con=getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("");
			ps.setString(1,subject);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u=new makequizbean();
				u.setSubid(rs.getInt("subid"));
				u.setSubject("subject");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
/*	public static List<makequizbean> getAllRecords()
	{
		List<makequizbean> list=new ArrayList<makequizbean>();
		Connection con=getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from quizinfo");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				makequizbean u=new makequizbean();
				u.setSubject("subject");
				u.setSubid("subid");
					
				list.add(u);
				
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	*/
	public static List<makequizbean> getAllRecords()
	{
		List<makequizbean> list=new ArrayList<makequizbean>();
		Connection con=getConnection();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("select * from quizinfo");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while(rs.next())
			{
				
				makequizbean u=new makequizbean();
		
				u.setSubject("subject");
				u.setSubid(Integer.parseInt("subid"));
				list.add(u);
				System.out.println(ps);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	





}
