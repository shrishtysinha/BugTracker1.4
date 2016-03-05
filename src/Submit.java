import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Submit extends HttpServlet
{
	public void doPost(HttpServletResquest request, HttpServletResponse response) throws IOException, ServletException
	{
		int empid, age, salary, dno;
		String name;
		try
		{
			empid=request.getParameter("uid");
			name=request.getParameter("uname");
			age=request.getParameter("uage");
			salary=request.getParameter("usalary");
			dno=request.getParameter("udno");
