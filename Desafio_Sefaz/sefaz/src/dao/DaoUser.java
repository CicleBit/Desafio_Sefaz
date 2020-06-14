package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BeansSefaz;
import connection.SingleConnection;

public class DaoUser {

	private Connection connection;
	
	public DaoUser() {
		connection = SingleConnection.getConnection();
	}
	public void Save(BeansSefaz user) {

		try {
			String sql = "insert into usuario(login, password) values (?, ?)";
			PreparedStatement insert = connection.prepareStatement(sql);
			insert.setString(1, user.getLogin());
			insert.setString(2, user.getPassword());
			insert.execute();
			connection.commit();
		}catch(Exception e) {
			try {
				e.printStackTrace();
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}			
		}
	}
	public List<BeansSefaz> listUsers()throws Exception{
		List<BeansSefaz> listing = new ArrayList<BeansSefaz>();
		
		String sql = "select * from usuario ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		
		while(resultSet.next()) {
			
			BeansSefaz beanSefaz = new BeansSefaz();
			beanSefaz.setLogin(resultSet.getString("login"));
			beanSefaz.setPassword(resultSet.getString("password"));
			listing.add(beanSefaz);
			
		}
		return listing;
	}
	
}
