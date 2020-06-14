package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String dB = "jdbc:postgresql://localhost:5432/desafio_DB?autoReconnect=true";
	
	private static String password = "admin";
	
	private static String user = "postgres";
	
	private static Connection connection = null;
	
	static {
		Connect();
	}
	public SingleConnection() {
		Connect();
	}
	
	private static void Connect() {
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(dB, user, password);
				connection.setAutoCommit(false);
				}
			}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Error to connect to DB");
			}
		}
	public static Connection getConnection() {
		return connection;
	}
}
