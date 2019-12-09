package modal;
import bean.makequizbean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class viewquizinfo {
	
	
	

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
	public static List<makequizbean> getAllRecords()
	{
		List<makequizbean> list=new ArrayList<makequizbean>();
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from quizinfo limit 3");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				makequizbean u=new makequizbean();
				u.setSubid(rs.getInt("subid"));
				u.setSubject(rs.getString("subject"));
				list.add(u);
			}
		}
		catch(Exception e)
		{
			
		}
		return list;
		
	}

}
