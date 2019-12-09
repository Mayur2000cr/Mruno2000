package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean. questionbean;

public class viewquizques {
	
	
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
	public static List<questionbean> getAllRec()
	{
		List<questionbean> list =new ArrayList<questionbean>();
		
			Connection con=getConnection();
			PreparedStatement ps = null;
			try {
				ps = con.prepareStatement("select * from quizques");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
					questionbean u1=new questionbean();
					u1.setQid(rs.getInt("qid"));
					u1.setQuestion(rs.getString("question"));
					u1.setOption1(rs.getString("option1"));
					u1.setOption2(rs.getString("option2"));
					u1.setOption3(rs.getString("option3"));
					u1.setOption4(rs.getString("option4"));
					u1.setAnswer(rs.getString("answere"));
					u1.setDescription(rs.getString("description"));
					u1.setSubname(rs.getString("subname"));
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		
		return list;
		
	}
	
	
	
	
	
	
	
	
}