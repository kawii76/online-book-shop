package projectIT20162764;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cctv","root","123456");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/opjsp","root","ndksliit");
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}

}
