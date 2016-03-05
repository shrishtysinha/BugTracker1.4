<%@ page import="com.mysql.jdbc.*,javax.servlet.*,javax.servlet.http.*,java.sql.*" %>
<html>
	<head>
		<title>Records</title>
	</head>
	<body>
		<% final String DB_DRIVER ="com.mysql.jdbc.Driver";
			final String DB_URL = "jdbc:mysql://localhost:3306/test";
			final String USER = "root";
			final String PASS = null;
			java.sql.Connection conn = null;
			java.sql.Statement stmt = null;
			String sql;
			try
			{
				Class.forName(DB_DRIVER); %>
				<h1><% out.println("Creating connection with database"); %> </h1>
				<% conn = DriverManager.getConnection(DB_URL,USER,PASS); %>
				<h1><% out.println("Created connection successfully"+conn); %></h1>
				<% stmt=conn.createStatement();
				sql = "SELECT * from employee";
				ResultSet rs = stmt.executeQuery(sql); %>
				<table border="2" cellpadding="10" cellspacing="5">
					<tr>
						<th>EMP_ID</th>
						<th>EMP_NAME</th>
						<th>AGE</th>
						<th>SALARY</th>
						<th>DEPARTMENT NO.</th>
					</tr>
				<% while(rs.next())
				{
					int empID = rs.getInt("empid");
					String name = rs.getString("ename");
					int eAge = rs.getInt("age");
					int eSalary = rs.getInt("salary");
					int eDno = rs.getInt("dno");
				%>
					<tr>
						<td><% out.println(empID); %></td>
						<td><% out.println(name); %></td>
						<td><% out.println(eAge); %></td>
						<td><% out.println(eSalary); %></td>
						<td><% out.println(eDno); %> </td>
					</tr>
				<% } %>
				</table>
				<% conn.close();
			}
			catch(SQLException se1)
			{
				out.println("Exception : "+se1);
			}
			catch(Exception e)
			{
				out.println("Exception : "+e);
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
					out.println("Exception : "+se2);
				}
			} %> 
			<h1><% out.println("Connection ended successfully"); %></h1>
	</body>
</html>
