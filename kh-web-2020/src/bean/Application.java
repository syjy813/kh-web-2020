package bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Application {
	Connection conn;
	public Application() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn 
			= DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XE", 
					"system", "oracle"
					);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	public Connection getConn() {
		return conn;
	}
}
