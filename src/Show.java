import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Show extends HttpServlet
{
	static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/test";
	static final String USER="root";
	static final String PASS=null;
	Connection conn=null;
	Statement stmt=null;
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try
		{
			Class.forName(DB_DRIVER);
			out.println("Creating connection");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			out.println("Connection successfully created : "+conn);
			stmt = conn.createStatement();
			String sql = "SELECT * from employee";
			ResultSet rs =stmt.executeQuery(sql);
			while(rs.next())
			{
				//get column values by column name
				int empID = rs.getInt("empid");
				String name = rs.getString("ename");
				int eAge = rs.getInt("age");
				int eSalary = rs.getInt("salary");
				int eDno = rs.getInt("dno");
				
				//print column values
				out.print(empID+"    "+name+"    "+eAge+"    "+eSalary+"    "+eDno+"<br>");
			}
			conn.close();
		}
		catch(SQLException se)
		{
			out.println("SQLException occured");
		}
		catch(Exception e)
		{
			out.println(e + " occured");
		}
		finally
		{
			try
			{
				if(conn!=null)
					conn.close();
			}
			catch(SQLException se2)
			{
				out.println("SQLException occured");
			}
		}
		out.println("Connection ended succesfully");
	}
}
