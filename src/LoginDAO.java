import java.sql.*;
public class LoginDAO
{
	public static String validateConnection(LoginBean bean)
	{
		boolean status = false;
		String accessRight = null;
		try
		{
			Connection conn = ConnectionProvider.getConn();
			String sql = "select * from login_user where username=? and password=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,bean.getUsername());
			pStmt.setString(2,bean.getPassword());
			ResultSet rs = pStmt.executeQuery();
			status = rs.next();
			if (status)
			{
				accessRight = rs.getString("flag");
			}
		}
		catch(Exception e){}
		
		return accessRight;
	}
}
