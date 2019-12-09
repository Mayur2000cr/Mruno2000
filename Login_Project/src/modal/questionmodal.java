package modal;

import bean.Login_Bean;
import bean.questionbean;
import common_things.DB_Connection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class questionmodal {

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
	
	public static int save(questionbean w) 
	{
		int status=0;
		Connection con=getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO `quizques` (`question`, `option1`, `option2`, `option3`, `option4`, `answere`, `description`, `subname`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
			
			
			ps.setString(1,w.getQuestion());
			ps.setString(2,w.getOption1());
			ps.setString(3,w.getOption2());
			ps.setString(4,w.getOption3());
			ps.setString(5,w.getOption4());
			ps.setString(6,w.getAnswer());
			ps.setString(7,w.getDescription());
			ps.setString(8,w.getSubject());
			
			
			status=ps.executeUpdate();
			//System.out.println(ps);
           System.out.println(ps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
		return 5;
	}
	public static int save1(questionbean q)
	{
		//System.out.println(q.getAnswere2());
		int status=0;
		Connection con=getConnection();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("insert into quizques(answere2) values(?)");
			status=ps.executeUpdate();
			ps.setString(1, q.getAnswere2());
			status=ps.executeUpdate();
			System.out.println(ps);
		} catch (SQLException e) {
			System.out.println(ps);
			
			
			
			
			
		}
		return status;
		
	}
	
	public static List<questionbean> getAllRecords(String subject)
	{
		List<questionbean> list=new ArrayList<questionbean>();
		try {
			
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from quizques where subname='"+subject+"'");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			questionbean u=new questionbean();
			u.setQid(rs.getInt("qid"));
			u.setQuestion(rs.getString("question"));
			u.setOption1(rs.getString("option1"));
			u.setOption2(rs.getString("option2"));
			u.setOption3(rs.getString("option3"));
			u.setOption4(rs.getString("option4"));
			u.setAnswer(rs.getString("answere"));
			u.setDescription(rs.getString("description"));
			u.setSubname(rs.getString("subname"));
			list.add(u);
			
			
			
		}
		
		
		
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
		return list;
		
	}
	
	
	public static List<questionbean> getJava()
	{
		List<questionbean> list=new ArrayList<questionbean>();
		try {
			
		
		Connection con=getConnection();
		String java = null;
		String subject = java;
		PreparedStatement ps=con.prepareStatement("select * from quizques where subname="+subject+"");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			questionbean u=new questionbean();
			u.setQid(rs.getInt("qid"));
			u.setQuestion(rs.getString("question"));
			u.setOption1(rs.getString("option1"));
			u.setOption2(rs.getString("option2"));
			u.setOption3(rs.getString("option3"));
			u.setOption4(rs.getString("option4"));
			u.setAnswer(rs.getString("answere"));
			u.setDescription(rs.getString("description"));
			u.setSubname(rs.getString("subname"));
			list.add(u);
			
			
			
		}
		
		
		
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
		return list;
		
	}
	
	
	
	
  /*  public boolean  Insertques(questionbean w)
    {
    	boolean flag=false;
    	DB_Connection obj=new DB_Connection();
    	Connection con=obj.getConnection();
    	PreparedStatement ps=null;
    	
    	try
    	{
    		String query="";
    		ps=con.prepareStatement(query);
    		ps.setString(1,w.getQuestion());
			ps.setString(2,w.getOption1());
			ps.setString(3,w.getOption2());
			ps.setString(4,w.getOption3());
			ps.setString(5,w.getOption4());
			ps.setString(6,w.getAnswer());
			ps.setString(7,w.getDescription());
			 ResultSet rs=ps.executeUpdate();
    				
    	}
    }*/

	
}
