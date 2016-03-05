import java.sql.*;
public class ConnectionProvider
{
	private static final Provider DB_SPECS = new Provider();
	private static Connection conn = null;
	static
	{
		try
		{
			Class.forName(DB_SPECS.DB_DRIVER);
			conn = DriverManager.getConnection(DB_SPECS.DB_URL,DB_SPECS.USER,DB_SPECS.PASS);
		}
		catch(Exception e)
		{}
	}
	public static Connection getConn()
	{
		return conn;
	}
}
