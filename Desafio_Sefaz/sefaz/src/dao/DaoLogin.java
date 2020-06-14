package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnection;

public class DaoLogin {

	private Connection connection;
	
	public DaoLogin() {
		connection = SingleConnection.getConnection();
	}
	
	public boolean ValidateLoginAndPassword(String login, String password) throws Exception{
		String sql = "select * from usuario where login = '"  +login+ "' and password = '" +password+ "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultset = statement.executeQuery();
		if(resultset.next()) {
			return true; //have user
		}else {
			return false; //No have user validate
		}
	}
}
