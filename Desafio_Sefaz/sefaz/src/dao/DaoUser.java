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
			String sql = "insert into usuario(login, password, email, id) values (?, ?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getLogin());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setLong(4, user.getId());
			preparedStatement.execute();
			connection.commit();
		} catch (Exception e) {
			try {
				e.printStackTrace();
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public List<BeansSefaz> listUsers() throws Exception {// Show Users Created
		List<BeansSefaz> listing = new ArrayList<BeansSefaz>();

		String sql = "select * from usuario ";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {

			BeansSefaz beanSefaz = new BeansSefaz();
			beanSefaz.setId(resultSet.getLong("id"));
			beanSefaz.setLogin(resultSet.getString("login"));
			beanSefaz.setPassword(resultSet.getString("password"));
			beanSefaz.setEmail(resultSet.getString("email"));
			listing.add(beanSefaz);

		}
		return listing;
	}

	public void delete(String id) {// Delete user

		try {
			String sql = "delete from usuario where id= '" + id + "'";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.execute();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			connection.rollback();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

	}

	public BeansSefaz Consult(String id) throws Exception { // Consult user
		String sql = "select * from usuario where id ='" + id + "'";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			BeansSefaz beansSefaz = new BeansSefaz();
			beansSefaz.setId(resultSet.getLong("id"));
			beansSefaz.setLogin(resultSet.getString("login"));
			beansSefaz.setPassword(resultSet.getString("password"));
			beansSefaz.setEmail(resultSet.getString("email"));

			return beansSefaz;
		}
		return null;
	}

	public void UpdatedStats(BeansSefaz user) {// Update user
		try {
			String sql = "update usuario set login = ?, password = ?, email = ? where id = " + user.getId();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getLogin());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.executeUpdate();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

}
