import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class LoginServlet extends HttpServlet
{
	String username, password;
	LoginBean bean = new LoginBean();
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		username = request.getParameter("uname");
		password = request.getParameter("upass");
		bean.setUsername(username);
		bean.setPassword(password);
		String userType = LoginDAO.validateConnection(bean);
		PrintWriter out = response.getWriter();
		if(userType.equals("A"))
		{
			request.setAttribute("userType",userType);
			request.getRequestDispatcher("LoggedIn.jsp").forward(request,response);
		}
		else if(userType.equals("U"))
		{
			request.setAttribute("userType",userType);
			request.getRequestDispatcher("LoggedIn.jsp").forward(request,response);
		}
		else
		{
			out.println("Access Denied!");
		}
	}
}
